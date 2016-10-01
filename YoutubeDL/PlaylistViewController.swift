//
//  DetailViewController.swift
//  YoutubeDL
//
//  Created by Pieter de Bie on 01/10/2016.
//  Copyright © 2016 Pieter de Bie. All rights reserved.
//

import UIKit
import AVKit
import AVFoundation
import Dispatch

class PlaylistViewController: UITableViewController {

    var objects = [Video]()

    override func viewDidLoad() {
        super.viewDidLoad()
        print("Loaded Subcontroller...")
        // Do any additional setup after loading the view, typically from a nib.
        // self.configureView()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {

        return objects.count
    }
    
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        print("ID: \(segue.identifier)");
        if segue.identifier == "showVideo" {
            print("Showing video...")
            let controller = segue.destination as! AVPlayerViewController
            let url = Bundle.main.url(forResource:"sample", withExtension:"mp4")!
            let player = AVPlayer(url: url)
            controller.player = player
            player.play()
            
//            if let indexPath = self.tableView.indexPathForSelectedRow {
//                let object = objects[indexPath.row]
//                let controller = (segue.destination as! UINavigationController).topViewController as! PlaylistViewController
//                controller.objects = object.videos
//                controller.navigationItem.leftBarButtonItem = self.splitViewController?.displayModeButtonItem
//                controller.navigationItem.leftItemsSupplementBackButton = true
//            }
        }
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        
        let object = objects[indexPath.row]
        cell.textLabel!.text = object.title
        return cell
    }
    
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            objects.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view.
        }
    }

}

