//
//  LibraryScreen.swift
//  MusicPlayer
//
//  Created by Joda Reksa on 06/03/23.
//

let kLibraryScreen = "Library Screen"

final class LibraryScreen: Screen<Void> {
    
    override var identifier: String {
        return kLibraryScreen
    }
    
    override func build() -> ViewController {
        let viewController = LibraryViewController()
        
        viewController.navigationEvent.on { [weak self] navigation in
            self?.event?(navigation)
        }
        
        return viewController
    }
    
}
