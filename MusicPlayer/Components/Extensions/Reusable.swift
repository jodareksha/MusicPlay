//
//  Reusable.swift
//  MusicPlayer
//
//  Created by Joda Reksa on 06/03/23.
//

public protocol Reusable: AnyObject {
    
    static var identifier: String { get }
}

public extension Reusable {
    
    static var identifier: String {
        return String(describing: self)
    }
    
}
