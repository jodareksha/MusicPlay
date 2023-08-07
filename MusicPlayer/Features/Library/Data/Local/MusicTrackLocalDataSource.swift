//
//  MusicTrackLocalDataSource.swift
//  MusicPlayer
//
//  Created by Joda Reksa on 06/03/23.
//

protocol MusicTrackLocalDataSource {
    func getAllLocalTracks() -> [MusicTrackLocalDataModel]
    func saveToLocal(item: MusicTrackLocalDataModel)
    func removeFromLocal(item: MusicTrackLocalDataModel)
}

struct MusicTrackLocalDataSourceImpl: MusicTrackLocalDataSource {
    
    private let realmRepository: RealmRepository<MusicTrackLocalDataModel> = RealmRepository<MusicTrackLocalDataModel>(.musicLocalTrack)
    
    func getAllLocalTracks() -> [MusicTrackLocalDataModel] {
        realmRepository.fetch()
        
        return realmRepository.allItem() ?? []
    }
    
    func saveToLocal(item: MusicTrackLocalDataModel) {
        realmRepository.insert(item)
    }
    
    func removeFromLocal(item: MusicTrackLocalDataModel) {
        realmRepository.delete(item)
    }
    
}
