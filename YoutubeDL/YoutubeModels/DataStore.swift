//
//  DataStore.swift
//  YoutubeDL
//
//  Created by Pieter de Bie on 01/10/2016.
//  Copyright © 2016 Pieter de Bie. All rights reserved.
//

import Foundation

func prefPath() -> String {
//    return "/tmp/prefs.plist"
    let dir = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first!
    return dir.appendingPathComponent("playlists.plist").path
}


class DataStore {
    
    static let sharedStore = DataStore()
    
    func loadFromDisk() -> [Playlist] {
        if let playlists = NSKeyedUnarchiver.unarchiveObject(withFile: prefPath()) as? [Playlist] {
            return playlists
        } else {
            return []
        }
    }
    
    func saveToDisk(playlists: [Playlist]) {
        NSKeyedArchiver.archiveRootObject(playlists, toFile: prefPath())
    }
}
