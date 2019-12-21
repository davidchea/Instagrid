//
//  ScaleAspectFit.swift
//  Instagrid
//
//  Created by David Chea on 21/12/2019.
//  Copyright © 2019 David Chea. All rights reserved.
//

import UIKit

@propertyWrapper
struct ScaleAspectFit<T: UIImageView> {
    
    // MARK: - Property
    
    let wrappedValue: T
    
    // MARK: - Initializer
    
    init(_ imageView: T) {
        wrappedValue = imageView
        wrappedValue.contentMode = .scaleAspectFit
    }
}
