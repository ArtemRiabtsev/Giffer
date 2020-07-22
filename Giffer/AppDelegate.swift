//
//  AppDelegate.swift
//  Giffer
//
//  Created by Артем Рябцев on 04.07.2020.
//  Copyright © 2020 Артем Рябцев. All rights reserved.
//

import UIKit
import GiphyUISDK
import GiphyCoreSDK

// MARK: Giphy API key
let apiKey = "0KSqDR5WrnhCQUcNhHQaMq7oFPMWOIyv"
@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        setupView()
        return true
    }
    
    // MARK: - Private
    private func setupView() {
        Giphy.configure(apiKey: apiKey)
        let startView = Screens.splash()
        let window = UIWindow(frame: UIScreen.main.bounds)
        self.window = window
        window.rootViewController = startView
        window.makeKeyAndVisible()
    }
}

