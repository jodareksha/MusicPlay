//
//  FavoriteViewModel.swift
//  MusicPlayer
//
//  Created by Joda Reksa on 06/03/23.
//

final class FavoriteViewModel {
    
    private let useCase: FavoriteUseCase = Resolver.resolve()
    
    var localData: [MusicTrackLocalDataModel] = []
    
    func getAllLocalTracks() {
        localData = useCase.getAllLocalTracks()
    }
    
    func removeFromLocal(item: MusicTrackLocalDataModel) {
        useCase.removeFromLocal(item: item)
    }
    
}
