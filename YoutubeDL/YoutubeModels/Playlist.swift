//
//  Playlist.swift
//  YoutubeDL
//
//  Created by Pieter de Bie on 01/10/2016.
//  Copyright © 2016 Pieter de Bie. All rights reserved.
//

import Foundation

class Playlist : CustomStringConvertible {
    
    var state = Status.Loaded
    var videos = [Video]()

    var title = "Loading"
    var id: String?
    var url: URL
    
    enum Status {
        case Loading
        case Loaded
    }
    
    init(url: URL) {
        self.url = url
    }
    
    func addVideo(video: Video) {
        videos.append(video);
    }
    
    func updateFromJson(json: [String: AnyObject]) {
        title = json["title"]! as! String
        id = json["id"] as! String?
        
        let entries = json["entries"]! as! [[String: AnyObject]]
        for entry in entries {
            addVideo(video: Video.fromJson(json: entry))
        }
    }
    
    var description: String {
        return "Playlist(title: \(title) id: \(id) videos: \(videos))"
    }
    
    class func fromJson(json: [String: AnyObject]) -> Playlist {
        let playlist = Playlist(url: URL(string: json["webpage_url"]! as! String)!)
        playlist.updateFromJson(json: json)
        
        return playlist
    }
}
