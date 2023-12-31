//
//  AppDelegate.swift
//  MusicPlayer
//
//  Created by Joda Reksa on 06/03/23.
//

import UIKit
import SnapKit
import netfox

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        createWindow()
        
        NFX.sharedInstance().start()
        window?.rootViewController = MainTabBarController.defaultTabBar
        
        return true
    }

    private func createWindow() {
        let windowFrame = UIScreen.main.bounds
        self.window = UIWindow(frame: windowFrame)
    }
    
}

