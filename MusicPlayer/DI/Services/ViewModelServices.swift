//
//  ViewModelServices.swift
//  MusicPlayer
//
//  Created by Joda Reksa on 06/03/23.
//

extension Resolver {
    
    static func registerAllViewModelServices() {
    
        register { LibraryViewModel() }
        register { FavoriteViewModel() }
        
    }
    
}
