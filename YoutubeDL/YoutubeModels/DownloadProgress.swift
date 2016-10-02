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
    var downloadedBytes: Int
    var totalBytes: Int
    
    var progress: Float {
        return Float(downloadedBytes) / Float(totalBytes)
    }
    
    override init() {
        status = "Initializing"
        downloadedBytes = 0
        totalBytes = 0
    }
    
    init(dict: [AnyHashable: Any]) {
        status = dict["status"]! as! String
        downloadedBytes = Int(dict["downloaded_bytes"]! as! NSNumber)
        totalBytes = Int(dict["total_bytes"]! as! NSNumber)
    }
}
