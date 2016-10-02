//
//  DataStore.swift
//  YoutubeDL
//
//  Created by Pieter de Bie on 01/10/2016.
//  Copyright © 2016 Pieter de Bie. All rights reserved.
//

import Foundation

func prefPath() -> String {
    let dir = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first!
    return dir.appendingPathComponent("playlists.plist").path
}


class DataStore {
    
    static let sharedStore = DataStore()
    var playlists: [Playlist]
    
    init() {
        playlists = []
        playlists = loadFromDisk()
    }
    
    func addPlaylist(url: URL) -> Playlist {
        let playlist = Playlist(url: url)
        playlists.append(playlist)
        return playlist
    }
    
    func remove(playlist: Playlist) {
        playlists.remove(at: playlists.index(of: playlist)!)
        saveToDisk()
    }
    
    func loadFromDisk() -> [Playlist] {
        print("Loading preferences from \(prefPath())")
        if let playlists = NSKeyedUnarchiver.unarchiveObject(withFile: prefPath()) as? [Playlist] {
            return playlists
        } else {
            return []
        }
    }
    
    func saveToDisk() {
        NSKeyedArchiver.archiveRootObject(playlists, toFile: prefPath())
    }
}
