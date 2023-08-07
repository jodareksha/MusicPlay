//
//  SubscribeResult.swift
//  MusicPlayer
//
//  Created by Joda Reksa on 06/03/23.
//

enum SubscribeResult<Value> {
    case Success(Value)
    case Failure(Error)
}
