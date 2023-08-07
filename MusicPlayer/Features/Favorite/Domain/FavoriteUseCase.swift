//
//  FavoriteUseCase.swift
//  MusicPlayer
//
//  Created by Joda Reksa on 06/03/23.
//

protocol FavoriteUseCase {
    func getAllLocalTracks() -> [MusicTrackLocalDataModel]
    func removeFromLocal(item: MusicTrackLocalDataModel)
}

struct FavoriteUseCaseImpl: FavoriteUseCase {
    
    private let repository: FavoriteRepository = Resolver.resolve()
    
    func getAllLocalTracks() -> [MusicTrackLocalDataModel] {
        return repository.getAllLocalTracks()
    }
    
    func removeFromLocal(item: MusicTrackLocalDataModel) {
        repository.removeFromLocal(item: item)
    }
    
}
