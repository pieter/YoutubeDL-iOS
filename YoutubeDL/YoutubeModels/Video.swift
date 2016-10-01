//
//  Video.swift
//  YoutubeDL
//
//  Created by Pieter de Bie on 01/10/2016.
//  Copyright © 2016 Pieter de Bie. All rights reserved.
//

import Foundation

class Video : CustomStringConvertible {
    var id: String
    var title: String
    
    init(id: String, title: String) {
        self.id = id
        self.title = title
    }
    
    class func fromJson(json: [String: AnyObject]) -> Video {
        return Video(id: json["id"]! as! String, title: json["title"]! as! String)
    }
    
    var description: String {
        return "Video(title: \(title) id: \(id))"
    }
}
