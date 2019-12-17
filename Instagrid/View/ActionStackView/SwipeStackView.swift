//
//  SwipeStackView.swift
//  Instagrid
//
//  Created by David Chea on 12/12/2019.
//  Copyright © 2019 David Chea. All rights reserved.
//

import UIKit

class SwipeStackView: UIStackView, StackView {
    
    // MARK: - Properties
        
    @AutoLayout(UIImageView(image: nil))
    var swipeImageView
    
    @AutoLayout(UILabel())
    var swipeLabel
    
    // MARK: - Initializers
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        configureStackView()
        [swipeImageView, swipeLabel].forEach { addArrangedSubview($0) }
    }
    
    required init(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    // MARK: - Protocol method
    
    func configureStackView() {
        axis = .vertical
        alignment = .center
        spacing = UIStackView.spacingUseSystem
    }
}
