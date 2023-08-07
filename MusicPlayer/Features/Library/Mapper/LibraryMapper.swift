//
//  LibraryMapper.swift
//  MusicPlayer
//
//  Created by Joda Reksa on 06/03/23.
//

protocol LibraryMapper {
    func trackListResponseModelToDomain(response: TrackListResponseModel) -> TrackListModel
}

struct LibraryMapperImpl: LibraryMapper {
    
    func trackListResponseModelToDomain(response: TrackListResponseModel) -> TrackListModel {
        let header = HeaderModel(available: response.header.available)
        let trackList = response.trackList.map { item -> TrackModel in
            return TrackModel(
                trackId: item.trackId,
                trackName: item.trackName,
                artistName: item.artistName)
        }
        
        return TrackListModel(header: header, trackList: trackList)
    }
}
