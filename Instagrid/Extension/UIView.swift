//
//  UIView.swift
//  Instagrid
//
//  Created by David Chea on 15/12/2019.
//  Copyright © 2019 David Chea. All rights reserved.
//

import UIKit

extension UIView {
    
    // MARK: - Method
    
    func addSubviews(_ views: [UIView]) {
        for view in views {
            addSubview(view)
        }
    }
}
