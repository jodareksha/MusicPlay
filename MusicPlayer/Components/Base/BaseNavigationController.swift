//
//  BaseNavigationController.swift
//  MusicPlayer
//
//  Created by Joda Reksa on 06/03/23.
//

import UIKit

final class BaseNavigationController: UINavigationController, UINavigationControllerDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.delegate = self
    }
    
}
