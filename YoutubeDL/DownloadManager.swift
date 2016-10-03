//
//  DownloadManager.swift
//  YoutubeDL
//
//  Created by Pieter de Bie on 01/10/2016.
//  Copyright © 2016 Pieter de Bie. All rights reserved.
//

import Foundation
import Dispatch

class DownloadManager {
    
    static let sharedDownloadManager = DownloadManager()

    
    var queue = DispatchQueue(label: "Python", qos: DispatchQoS.utility)
    var activeVideo: Video?
    var updateCallback: ((DownloadProgress) -> ())?
    
    init() {
        queue.async {
            YDL_initialize()
            YDL_setProgressCallback { data in
                let update = DownloadProgress(dict: data!)
                if let video = self.activeVideo {
                    video.progress = update;
                }
                if let updateCb = self.updateCallback {
                    DispatchQueue.main.async {
                      updateCb(update)  
                    }
                }
            }
        }
    }
    
    func refreshPlaylist(playlist: Playlist, onUpdate: @escaping () -> ()) {
        queue.async {
            playlist.state = .Loading
            YDL_playlistDataForUrl(playlist.url, { (data) in
                print("Have playlist data: \(data)")
                let type = data!["type"]! as! String
                let attrs = data!["data"]! as! [String: String]
                
                if type == "initial" {
                    playlist.id = attrs["id"]
                    playlist.title = attrs["title"]!
                    DispatchQueue.main.async(execute: onUpdate)
                    print("Updated playlist attrs \(playlist.id) \(playlist.title)")
                } else if type == "entry" {
                    let video = Video(id: attrs["id"]!, title: attrs["title"]!)
                    playlist.addVideo(video: video)
                    DispatchQueue.main.async(execute: onUpdate)
                }
            })
            DispatchQueue.main.async {
                playlist.state = .Loaded
                onUpdate()
            }

        }
    }
    
    func downloadVideo(video: Video, onUpdate: @escaping (DownloadProgress) -> ()) {
        video.progress = DownloadProgress(status: .Queued)
        queue.async {
            print("Strating download for \(video.id)")
            self.activeVideo = video
            self.updateCallback = onUpdate
            video.progress = DownloadProgress(status: .Preparing)
            DispatchQueue.main.async { onUpdate(video.progress!) }
            YDL_downloadVideo(video.url, video.downloadLocation())
            video.progress = nil
            self.activeVideo = nil
            self.updateCallback = nil
            print("Done with download for \(video.id)")
        }
    }
}
