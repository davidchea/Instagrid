//
//  Properties.swift
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
    
    init(view: T) {
        self.wrappedValue = view
        wrappedValue.translatesAutoresizingMaskIntoConstraints = false
        
        if let imageView = wrappedValue as? UIImageView {
            imageView.contentMode = .scaleAspectFit
        }
        else if let label = wrappedValue as? UILabel {
            label.font = UIFont(name: "Delm-Medium", size: 26)
            label.textColor = .white
        }
    }
}