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
        self.priority = UILayoutPriority(999)
        
        return self
    }
}
