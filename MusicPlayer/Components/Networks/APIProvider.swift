//
//  APIProvider.swift
//  MusicPlayer
//
//  Created by Joda Reksa on 06/03/23.
//

import Moya

internal final class APIProvider<Target: TargetType> {

    static func provider() -> MoyaProvider<Target> {
        return MoyaProvider()
    }
    
}
