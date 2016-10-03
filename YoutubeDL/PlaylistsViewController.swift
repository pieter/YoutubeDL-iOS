import UIKit

class PlaylistsViewController: UITableViewController {

    var detailViewController: PlaylistViewController? = nil

    var objects: [Playlist] {
        return DataStore.sharedStore.playlists
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        addListFromString(stringUrl: "https://www.youtube.com/playlist?list=PLBsP89CPrMeMKjHnLfO3WAhiOOxiv5Xqo")
//        addListFromString(stringUrl: "https://www.youtube.com/watch?v=8GkqkqCini0&list=PLH-huzMEgGWDSuoidhR6uj3-sb_FAEt0A")
        
        // Do any additional setup after loading the view, typically from a nib.
        self.navigationItem.leftBarButtonItem = self.editButtonItem

        let addButton = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(insertNewObject(_:)))
        self.navigationItem.rightBarButtonItem = addButton
        if let split = self.splitViewController {
            let controllers = split.viewControllers
            self.detailViewController = (controllers[controllers.count-1] as! UINavigationController).topViewController as? PlaylistViewController
        }
    }

    override func viewWillAppear(_ animated: Bool) {
        self.clearsSelectionOnViewWillAppear = self.splitViewController!.isCollapsed
        super.viewWillAppear(animated)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func update() {
        tableView.reloadData()
        DataStore.sharedStore.saveToDisk()
    }
    
    func addListFromString(stringUrl: String) {
        let playlist = DataStore.sharedStore.addPlaylist(url: URL(string: stringUrl)!)
        
        DownloadManager.sharedDownloadManager.refreshPlaylist(playlist: playlist) {
            print("Updated playlist: \(playlist)")
            self.update()
        }
        update()
    }
    
    func insertNewObject(_ sender: Any) {
        let alert = UIAlertController(title: "Add Playlist", message: "Youtube playlist URL", preferredStyle: UIAlertControllerStyle.alert)
        alert.addTextField { (textField) in
            textField.placeholder = "https://www.youtube.com/playlist?list=PLBsP89CPrMeMKjHnLfO3WAhiOOxiv5Xqo"
        }

        alert.addAction(UIAlertAction(title: "Add", style: UIAlertActionStyle.default) { (action) in
            self.addListFromString(stringUrl: alert.textFields![0].text!)
        })

        self.present(alert, animated: true)
    }

    // MARK: - Segues

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showDetail" {
            if let indexPath = self.tableView.indexPathForSelectedRow {
                let object = objects[indexPath.row]
                let controller = (segue.destination as! UINavigationController).topViewController as! PlaylistViewController
                controller.objects = object.videos
                controller.playlist = object
                controller.navigationItem.leftBarButtonItem = self.splitViewController?.displayModeButtonItem
                controller.navigationItem.leftItemsSupplementBackButton = true
            }
        }
    }

    // MARK: - Table View

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return objects.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)

        let playlist = objects[indexPath.row]
        
        if (playlist.state == .Loading) {
            cell.textLabel!.text = playlist.title ?? "New Playlist"
            cell.detailTextLabel!.text = "Loading... (\(playlist.videos.count)+ videos)"
        } else {
            cell.textLabel!.text = playlist.title
            cell.detailTextLabel!.text = "\(playlist.videos.count) videos"
        }
        
        return cell
    }

    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }

    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            let playlist = objects[indexPath.row]
            playlist.deleteFiles()
            DataStore.sharedStore.remove(playlist: playlist)
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view.
        }
    }


}

