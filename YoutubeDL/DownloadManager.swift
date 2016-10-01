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
    
    init() {
        queue.async {
            YDL_initialize()
        }
    }
    
    func refreshPlaylist(playlist: Playlist, onDone: @escaping () -> ()) {
        queue.async {
            let data = YDL_playlistDataForUrl(playlist.url)
            playlist.updateFromJson(json: data as! [String : AnyObject])
            print("Refreshed playlist: \(playlist)")
            DispatchQueue.main.async(execute: onDone)
        }
    }
    
    func downloadVideo(video: Video) {
        queue.async {
            YDL_downloadVideo(video.id)
        }
    }
}
