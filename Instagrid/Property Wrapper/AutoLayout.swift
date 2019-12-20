//
//  AutoLayout.swift
//  Instagrid
//
//  Created by David Chea on 15/12/2019.
//  Copyright © 2019 David Chea. All rights reserved.
//

import UIKit

@propertyWrapper
struct AutoLayout<T: UIView> {
    
    // MARK: - Property
    
    let wrappedValue: T

    // MARK: - Initializer
    
    init(wrappedValue: T) {
        self.wrappedValue = wrappedValue
        wrappedValue.translatesAutoresizingMaskIntoConstraints = false
    }
}
