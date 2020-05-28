//
//  AppDelegate.swift
//  PokeApiV2
//
//  Created by Caio Pinho on 21/05/20.
//  Copyright © 2020 Caio Pinho. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?
    var defaultContainer: DefaultContainer!
    var baseScreenCoordinator: BaseScreenCoordinator?
        
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
                
        self.defaultContainer = DefaultContainer()
        
        self.initCoordinator()
        
        return true
    }
    
    // MARK: UISceneSession Lifecycle
    
    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        // Called when a new scene session is being created.
        // Use this method to select a configuration to create the new scene with.
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }
    
    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        // Called when the user discards a scene session.
        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
    }
    
    
    private func initCoordinator() {
        
        self.baseScreenCoordinator = BaseScreenCoordinator(
            navigationController: UINavigationController(),
            defaultContainer: self.defaultContainer
        )
        baseScreenCoordinator?.start()
        
        self.window = UIWindow(frame: UIScreen.main.bounds)
        window?.overrideUserInterfaceStyle = .light
        self.window?.makeKeyAndVisible()
        self.window?.rootViewController = baseScreenCoordinator?.navigationController
    }
}

