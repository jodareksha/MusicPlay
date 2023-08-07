//
//  TrackModel.swift
//  MusicPlayer
//
//  Created by Joda Reksa on 06/03/23.
//

struct TrackListModel {
    var header: HeaderModel
    var trackList: [TrackModel]
}

struct TrackModel {
    var trackId: Int
    var trackName: String
    var artistName: String
    var isFavorite: Bool = false
}

struct HeaderModel {
    var available: Int
}
