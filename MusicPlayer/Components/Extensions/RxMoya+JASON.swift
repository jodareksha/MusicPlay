//
//  RxMoya+JASON.swift
//  MusicPlayer
//
//  Created by Joda Reksa on 06/03/23.
//

import RxSwift
import Moya
import JASON

internal extension ObservableType where Element == Response {

    func mapObject<T: Mappable>(type: T.Type, keyPath: [Any] = []) -> Observable<T> {

        return observeOn(SerialDispatchQueueScheduler(qos: .background))
            .flatMap { response -> Observable<T> in
                
                guard let object: T = response.mapObject(withKeyPath: keyPath) else {
                    let reason = "Failed to parse server's response."
                    let error = NSError(domain: "", code: -1011, userInfo: [ NSLocalizedDescriptionKey: reason ])
                    return Observable.error(error)
                }
                
                return Observable.just(object)
            }
            .observeOn(MainScheduler.instance)
    }
    
}
