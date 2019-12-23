//
//  AppDelegate.swift
//  Instagrid
//
//  Created by David Chea on 10/12/2019.
//  Copyright © 2019 David Chea. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    // MARK: - Property

    var window: UIWindow? = UIWindow()

    // MARK: - Delegate method

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]? = nil) -> Bool {
        window!.makeKeyAndVisible()
        window!.rootViewController = InstagridViewController()

        return true
    }
}
