//
//  NSLayoutConstraint.swift
//  Instagrid
//
//  Created by David Chea on 15/12/2019.
//  Copyright © 2019 David Chea. All rights reserved.
//

import UIKit

extension NSLayoutConstraint {
    
    // MARK: - Method
    
    func reducePriority() -> NSLayoutConstraint {
        priority = UILayoutPriority(priority.rawValue - 1)
        
        return self
    }
}
