//
//  FavoriteCoordinator.swift
//  MusicPlayer
//
//  Created by Joda Reksa on 06/03/23.
//

import UIKit

class FavoriteCoordinator: Coordinator {

    var navigationController: BaseNavigationController = BaseNavigationController()
    
    var screenStack: [Screenable] = []
    
    var onCompleted: ((ScreenResult?) -> Void)?
    
    func start() {
        set([FavoriteScreen(())])
        updateTitle()
    }
    
    func updateTitle() {
        guard let viewController = navigationController.viewControllers.first else {
            return
        }
        viewController.title = favoriteStr
        viewController.tabBarItem.image = .icsOFavorite
        viewController.tabBarItem.selectedImage = .icsFFavorite
    }
    
    func showScreen(identifier: String, navigation: Navigation) {

    }
    
}
