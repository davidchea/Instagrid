//
//  SwipeStackView.swift
//  Instagrid
//
//  Created by David Chea on 12/12/2019.
//  Copyright © 2019 David Chea. All rights reserved.
//

import UIKit

class SwipeStackView: UIStackView {
    
    // MARK: - Properties
        
    @AutoLayout(view: UIImageView(image: nil))
    var swipeImageView
    
    @AutoLayout(view: UILabel())
    var swipeLabel
    
    // MARK: - Initializers
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        axis = .vertical
        spacing = 10
        
        addArrangedSubviews([UIView(), swipeImageView, swipeLabel, UIView()])
    }
    
    required init(coder: NSCoder) {
        super.init(coder: coder)
    }
}
