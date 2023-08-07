//
//  RepositoryServices.swift
//  MusicPlayer
//
//  Created by Joda Reksa on 06/03/23.
//

extension Resolver {
    
    static func registerAllRepositoryServices() {
    
        register { LibraryRepositoryImpl() as LibraryRepository }
        register { FavoriteRepositoryImpl() as FavoriteRepository }
        
    }
    
}
