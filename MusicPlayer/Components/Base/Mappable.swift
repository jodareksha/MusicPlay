//
//  Mappable.swift
//  MusicPlayer
//
//  Created by Joda Reksa on 06/03/23.
//

import JASON

internal protocol Mappable {

    init?(json: JSON)

    func toDictionary() -> [String: Any]
}

extension Mappable {

    func toDictionary() -> [String: Any] {
        return [:]
    }

}
