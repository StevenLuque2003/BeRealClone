//
//  FeedViewController.swift
//  BerealClone15
//
//  Created by Steven Luque on 2/12/25.
//

import Foundation
import UIKit

class FeedViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        setupNavBar()
    }

    func setupNavBar() {
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Logout", style: .plain, target: self, action: #selector(handleLogout))
    }

    @objc func handleLogout() {
        AuthManager.logOut()
        switchToLoginScreen()
    }
    
    func switchToLoginScreen() {
        if let sceneDelegate = UIApplication.shared.connectedScenes.first?.delegate as? SceneDelegate {
            sceneDelegate.window?.rootViewController = UINavigationController(rootViewController: LoginViewController())
        }
    }
}

