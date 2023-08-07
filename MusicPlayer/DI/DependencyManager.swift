//
//  DependencyManager.swift
//  MusicPlayer
//
//  Created by Joda Reksa on 06/03/23.
//

extension Resolver: ResolverRegistering {
    
    public static func registerAllServices() {
        registerAllRemoteDataSourceServices()
        registerAllLocaleDataSourceServices()
        registerAllRepositoryServices()
        registerAllViewModelServices()
        registerAllMapperServices()
        registerAllUseCaseServices()
    }
    
}
