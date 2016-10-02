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
                    video.progress = update.progress;
                }
                if let updateCb = self.updateCallback {
                    DispatchQueue.main.async {
                      updateCb(update)  
                    }
                }
            }
        }
    }
    
    func refreshPlaylist(playlist: Playlist, onDone: @escaping () -> ()) {
        queue.async {
            playlist.state = .Loading
            let data = YDL_playlistDataForUrl(playlist.url)
            playlist.updateFromJson(json: data as! [String : AnyObject])
            playlist.state = .Loaded
            print("Refreshed playlist: \(playlist)")
            DispatchQueue.main.async(execute: onDone)
        }
    }
    
    func downloadVideo(video: Video, onUpdate: @escaping (DownloadProgress) -> ()) {
        queue.async {
            print("Strating download for \(video.id)")
            self.activeVideo = video
            self.updateCallback = onUpdate
            video.status = .Downloading
            DispatchQueue.main.async { onUpdate(DownloadProgress()) }
            YDL_downloadVideo(video.url, video.downloadLocation())
            video.progress = nil
            video.status = .Downloaded
            self.activeVideo = nil
            self.updateCallback = nil
            print("Done with download for \(video.id)")
        }
    }
}
