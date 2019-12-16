//
//  SceneDelegate.swift
//  Instagrid
//
//  Created by David Chea on 10/12/2019.
//  Copyright © 2019 David Chea. All rights reserved.
//

import UIKit

@available(iOS 13.0, *)
class SceneDelegate: UIResponder, UIWindowSceneDelegate {
    
    // MARK: - Property
    
    var window: UIWindow?
    
    // MARK: - Protocol method
    
    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        let windowScene = scene as! UIWindowScene
    
        window = UIWindow(frame: windowScene.coordinateSpace.bounds)
        window!.windowScene = windowScene
        window!.makeKeyAndVisible()
        window!.rootViewController = InstagridViewController()
    }
}
