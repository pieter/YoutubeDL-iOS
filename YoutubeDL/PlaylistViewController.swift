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

    var playlist: Playlist?
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
    
    @IBAction func refreshPlaylist(_ sender: UIRefreshControl) {
        DownloadManager.sharedDownloadManager.refreshPlaylist(playlist: playlist!) {
            [weak self] in
            self?.tableView.reloadData()
            sender.endRefreshing()
        }
    }

    func playerUrl(video: Video) -> URL {
        if video.hasBeenDownloaded() {
            return video.downloadLocation()
        }
        let fileManager = FileManager.default
        
        // Assume we have partial, otherwise why would this have been called?
        let partialLocation = video.partialDownloadLocation
        let linkLocation = partialLocation.appendingPathExtension(".mp4")
        if !fileManager.fileExists(atPath: linkLocation.path) {
            do {
                try fileManager.linkItem(at: partialLocation, to: linkLocation)
            } catch _ {
                // Whoops
            }
        }
        return linkLocation
        
    }
    

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showVideo" {
            if let indexPath = self.tableView.indexPathForSelectedRow {
                let video = objects[indexPath.row]

                let controller = segue.destination as! AVPlayerViewController
                
                /// <#Description#>
                let player = AVPlayer(url: playerUrl(video: video))
                if video.watchedPosition > 0 {
                    player.seek(to: CMTime(seconds: Double(video.watchedPosition), preferredTimescale: 1))
                }
                
                player.addPeriodicTimeObserver(forInterval: CMTime.init(seconds: 1.0, preferredTimescale: 1), queue: nil, using: {
                    [weak self] (time) in
                    video.watchedPosition = Int(time.seconds)
                    DataStore.sharedStore.saveToDisk()
                    self?.tableView.reloadRows(at: [indexPath], with: .none)
                })
                
                controller.player = player
                player.play()
            }
        }
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        
        let video = objects[indexPath.row]
        cell.textLabel!.text = video.title

        if video.hasBeenDownloaded() {
            if (video.watchedPosition == 0) {
                cell.detailTextLabel!.text = "\(video.time) - NEW"
            } else {
                cell.detailTextLabel!.text = "\(video.time) - Watched up to \(video.watchedPosition / 60):\(video.watchedPosition % 60)"
            }
        } else if video.status == .Downloading {
            cell.detailTextLabel!.text = "Downloading \(Int((video.progress ?? 0) * 100))%"
        } else {
            cell.detailTextLabel!.text = "\(video.time)"
        }
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let video = objects[indexPath.row]
        if video.hasBeenDownloaded() || video.status == .Downloading {
            performSegue(withIdentifier: "showVideo", sender: self)
        } else {
            DownloadManager.sharedDownloadManager.downloadVideo(video: video) {_ in
                self.tableView.reloadData()
            }
            self.tableView.deselectRow(at: indexPath, animated: true)
        }
    }
    
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            objects[indexPath.row].deleteFile()
            tableView.reloadData()
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view.
        }
    }

}

