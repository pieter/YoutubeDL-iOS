//
//  Video.swift
//  YoutubeDL
//
//  Created by Pieter de Bie on 01/10/2016.
//  Copyright © 2016 Pieter de Bie. All rights reserved.
//

import Foundation

final class Video : NSObject, NSCoding {
    var id: String
    var title: String
    var progress: DownloadProgress?
    var duration = 0
    var watchedPosition = 0
    
    init(id: String, title: String) {
        self.id = id
        self.title = title
    }
    
    required convenience init(coder decoder: NSCoder) {
        let id = decoder.decodeObject(forKey: "id") as! String
        let title = decoder.decodeObject(forKey: "title") as! String
        self.init(id: id, title: title)
        duration = decoder.decodeInteger(forKey: "duration")
        watchedPosition = decoder.decodeInteger(forKey: "watchedPosition")
    }

    func encode(with coder: NSCoder) {
        coder.encode(title, forKey: "title")
        coder.encode(id, forKey: "id")
        coder.encode(duration, forKey: "duration")
        coder.encode(watchedPosition, forKey: "watchedPosition")
    }

    func downloadLocation() -> URL {
        let docDir = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first!
        return docDir.appendingPathComponent("videos").appendingPathComponent("\(id).mp4")
    }
    
    var url: URL {
        return URL(string: "https://www.youtube.com/watch?v=\(id)")!
    }
    
    var partialDownloadLocation: URL {
        return downloadLocation().appendingPathExtension("part")
    }
    
    func deleteFile() {
        do {
            if hasBeenDownloaded() {
                    try FileManager.default.removeItem(at: downloadLocation())
                    print("Checking \(partialDownloadLocation.path)")
            }
            if FileManager.default.fileExists(atPath: partialDownloadLocation.path) {
                print("Removing partial file \(partialDownloadLocation)")
                try FileManager.default.removeItem(at: partialDownloadLocation)
            }
        } catch let error as NSError {
            print("Error deleting file: \(error)")
        }
    }
    
    var time: String {
        return "\(duration / 60):\(duration % 60)"
    }
    
    func hasPartial() -> Bool {
        return FileManager.default.fileExists(atPath: partialDownloadLocation.path)
    }
    
    func hasBeenDownloaded() -> Bool {
        return FileManager.default.fileExists(atPath: downloadLocation().path)
    }
    
    class func fromJson(json: [String: AnyObject]) -> Video {
        print("Deserialize from json! \(json)")
        let video = Video(id: json["id"]! as! String, title: json["title"]! as! String)
        video.duration = Int(json["duration"]! as! NSNumber)
        return video
    }

}
