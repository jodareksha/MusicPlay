//
//  LibraryCoordinator.swift
//  MusicPlayer
//
//  Created by Joda Reksa on 06/03/23.
//

import UIKit

class LibraryCoordinator: Coordinator {

    var navigationController: BaseNavigationController = BaseNavigationController()
    
    var screenStack: [Screenable] = []
    
    var onCompleted: ((ScreenResult?) -> Void)?
    
    func start() {
        set([LibraryScreen(())])
        updateTitle()
    }
    
    func updateTitle() {
        guard let viewController = navigationController.viewControllers.first else {
            return
        }
        viewController.title = libraryStr
        viewController.tabBarItem.image = .icsOMusic
        viewController.tabBarItem.selectedImage = .icsFMusic
    }
    
    func showScreen(identifier: String, navigation: Navigation) {
    
    }
    
}
