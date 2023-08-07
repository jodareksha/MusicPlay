//
//  BaseViewModel.swift
//  MusicPlayer
//
//  Created by Joda Reksa on 06/03/23.
//

import RxSwift

enum LoadingState: Int {
    case notLoad
    case loading
    case finished
    case failed
}

class BaseViewModel {
    
    var disposeBag = DisposeBag()
    
    let baseStateProperty = BehaviorSubject<LoadingState>(value: .notLoad)
    
}
