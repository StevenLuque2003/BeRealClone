//
//  SceneDelegate.swift
//  BerealClone15
//
//  Created by Steven Luque on 2/12/25.
//

import Foundation
import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?

    // Called when the app is about to connect to the scene (window).
    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let windowScene = (scene as? UIWindowScene) else { return }

        // Initialize the window with the scene
        let window = UIWindow(windowScene: windowScene)
        
        // Set the root view controller to the login view controller
        window.rootViewController = UINavigationController(rootViewController: LoginViewController())
        self.window = window
        
        // Make the window key and visible
        window.makeKeyAndVisible()
    }

    // Other SceneDelegate methods (optional)
    func sceneDidDisconnect(_ scene: UIScene) {}
    func sceneDidBecomeActive(_ scene: UIScene) {}
    func sceneWillResignActive(_ scene: UIScene) {}
    func sceneWillEnterForeground(_ scene: UIScene) {}
    func sceneDidEnterBackground(_ scene: UIScene) {}
}

