//
//  Playlist.swift
//  YoutubeDL
//
//  Created by Pieter de Bie on 01/10/2016.
//  Copyright © 2016 Pieter de Bie. All rights reserved.
//

import Foundation

final class Playlist : NSObject, NSCoding {
    
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
    
    required convenience init(coder decoder: NSCoder) {
        self.init(url: decoder.decodeObject(forKey: "url") as! URL)
        title = decoder.decodeObject(forKey: "title") as! String
        videos = decoder.decodeObject(forKey: "videos") as! [Video]
        id = decoder.decodeObject(forKey: "id") as? String
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
        
    class func fromJson(json: [String: AnyObject]) -> Playlist {
        let playlist = Playlist(url: URL(string: json["webpage_url"]! as! String)!)
        playlist.updateFromJson(json: json)
        
        return playlist
    }
    
    func deleteFiles() {
        videos.forEach { (video) in
            video.deleteFile()
        }
    }
    
    func encode(with coder: NSCoder) {
        coder.encode(title, forKey: "title")
        coder.encode(id, forKey: "id")
        coder.encode(url, forKey: "url")
        coder.encode(videos, forKey: "videos")
    }
}
