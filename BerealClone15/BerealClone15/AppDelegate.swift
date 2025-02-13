//
//  AppDelegate.swift
//  BerealClone15
//
//  Created by Steven Luque on 2/12/25.
//

import Foundation
import ParseSwift
import UIKit
import ParseSwift

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    // This method is called when the app finishes launching
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Add Parse initialization code here
        
        ParseSwift.initialize(
            applicationId: "dCtA4SZEco1Sre4TOvaJHOWbMKxPbeWkjNbNrVJe",  // Your Back4App App ID
            clientKey: "HXjO4JeRNT3lFhP8IdlSoQ7QaxvCQCfHlPsUR27Y",  // Your Back4App Client Key
            serverURL: URL(string: "https://parseapi.back4app.com")!  // Back4App server URL
        )

        // Override point for customization after application launch.
        return true
    }

    // Other AppDelegate methods (e.g., scene handling)...
}
