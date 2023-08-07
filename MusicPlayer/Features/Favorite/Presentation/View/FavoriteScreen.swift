//
//  FavoriteScreen.swift
//  MusicPlayer
//
//  Created by Joda Reksa on 06/03/23.
//

let kFavoriteScreen = "Favorite Screen"

final class FavoriteScreen: Screen<Void> {
    
    override var identifier: String {
        return kFavoriteScreen
    }
    
    override func build() -> ViewController {
        let viewController = FavoriteViewController()
        
        viewController.navigationEvent.on { [weak self] navigation in
            self?.event?(navigation)
        }
        
        return viewController
    }
    
}
