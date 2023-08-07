//
//  LocalDataSourceServices.swift
//  MusicPlayer
//
//  Created by Joda Reksa on 06/03/23.
//

extension Resolver {
    
    static func registerAllLocaleDataSourceServices() {
        
        register { MusicTrackLocalDataSourceImpl() as MusicTrackLocalDataSource }
        
    }
    
}
