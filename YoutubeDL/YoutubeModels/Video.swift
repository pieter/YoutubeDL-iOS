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
    var progress: Float?
    var status: Status
    var duration = 0
    
    enum Status {
        case Downloaded
        case Downloading
        case New
    }
    
    init(id: String, title: String) {
        self.status = .New
        self.id = id
        self.title = title
    }
    
    required convenience init(coder decoder: NSCoder) {
        let id = decoder.decodeObject(forKey: "id") as! String
        let title = decoder.decodeObject(forKey: "title") as! String
        self.init(id: id, title: title)
        duration = decoder.decodeInteger(forKey: "duration")
    }

    func encode(with coder: NSCoder) {
        coder.encode(title, forKey: "title")
        coder.encode(id, forKey: "id")
        coder.encode(duration, forKey: "duration")
    }

    func downloadLocation() -> URL {
        let docDir = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first!
        return docDir.appendingPathComponent("videos").appendingPathComponent("\(id).mp4")
    }
    
    var url: URL {
        return URL(string: "https://www.youtube.com/watch?v=\(id)")!
    }
    
    func deleteFile() {
        if hasBeenDownloaded() {
            do {
                try FileManager.default.removeItem(at: downloadLocation())
            } catch let error as NSError {
                print("Error deleting file: \(error)")
            }
        }
    }
    
    var time: String {
        return "\(duration / 60):\(duration % 60)"
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
