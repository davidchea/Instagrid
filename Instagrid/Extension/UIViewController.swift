//
//  UIViewController.swift
//  Instagrid
//
//  Created by David Chea on 17/12/2019.
//  Copyright © 2019 David Chea. All rights reserved.
//

import UIKit

extension UIViewController {
    
    // MARK: - Method
    
    func fillSafeArea(_ uiView: UIView) {
        NSLayoutConstraint.activate([
            uiView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            uiView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
            uiView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
            uiView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor)
        ])
    }
}
