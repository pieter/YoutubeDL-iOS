//
//  DownloadProgress.swift
//  YoutubeDL
//
//  Created by Pieter de Bie on 02/10/2016.
//  Copyright © 2016 Pieter de Bie. All rights reserved.
//

import Foundation

class DownloadProgress : NSObject {
    var status: String
    var downloadedBytes = 0
    var totalBytes = 0
    var speed = 0
    
    var progress: Float {
        return Float(downloadedBytes) / Float(totalBytes)
    }
    
    override init() {
        status = "Initializing"
    }
    
    init(dict: [AnyHashable: Any]) {
        status = dict["status"]! as! String
        downloadedBytes = Int(dict["downloaded_bytes"]! as! NSNumber)
        speed = Int(dict["speed"] as? NSNumber ?? 0)
        totalBytes = Int(dict["total_bytes"]! as! NSNumber)
    }
}
