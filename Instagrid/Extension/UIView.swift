//
//  UIView.swift
//  Instagrid
//
//  Created by David Chea on 17/12/2019.
//  Copyright © 2019 David Chea. All rights reserved.
//

import UIKit

extension UIView {
    
    // MARK: - Method
    
    func fill(to view: UIView) {
        NSLayoutConstraint.activate([
            topAnchor.constraint(equalTo: view.topAnchor),
            bottomAnchor.constraint(equalTo: view.bottomAnchor),
            leadingAnchor.constraint(equalTo: view.leadingAnchor),
            trailingAnchor.constraint(equalTo: view.trailingAnchor)
        ])
    }
}
