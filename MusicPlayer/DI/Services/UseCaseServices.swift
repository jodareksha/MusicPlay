//
//  UseCaseServices.swift
//  MusicPlayer
//
//  Created by Joda Reksa on 06/03/23.
//

extension Resolver {
    
    static func registerAllUseCaseServices() {
        
        register { LibraryUseCaseImpl() as LibraryUseCase }
        register { FavoriteUseCaseImpl() as FavoriteUseCase }
        
    }
    
}
