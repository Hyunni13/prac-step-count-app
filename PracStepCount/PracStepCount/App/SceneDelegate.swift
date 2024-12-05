//
//  SceneDelegate.swift
//  PracStepCount
//
//  Created by James on 12/3/24.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?

    func scene(
        _ scene: UIScene,
        willConnectTo session: UISceneSession,
        options connectionOptions: UIScene.ConnectionOptions
    ) {
        guard let scene = (scene as? UIWindowScene) else { return }
        
        window = UIWindow(windowScene: scene)
        window?.rootViewController = HomeViewController()
        window?.makeKeyAndVisible()
    }
    
    func sceneWillResignActive(_ scene: UIScene) { }
    
    func sceneDidEnterBackground(_ scene: UIScene) { }
    
    func sceneWillEnterForeground(_ scene: UIScene) { }

    func sceneDidBecomeActive(_ scene: UIScene) { }
    
    func sceneDidDisconnect(_ scene: UIScene) { }
    
}
