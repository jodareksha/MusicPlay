//
//  RemoteDataSourceServices.swift
//  MusicPlayer
//
//  Created by Joda Reksa on 06/03/23.
//

extension Resolver {
    
    static func registerAllRemoteDataSourceServices() {
    
        register { LibraryRemoteDataSourceImpl() as LibraryRemoteDataSource }
        
    }
    
}
