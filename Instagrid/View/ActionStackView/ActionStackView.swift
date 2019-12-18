//
//  ActionStackView.swift
//  Instagrid
//
//  Created by David Chea on 11/12/2019.
//  Copyright © 2019 David Chea. All rights reserved.
//

import UIKit

class ActionStackView: UIStackView, StackView {
    
    // MARK: - Properties
    
    @AutoLayout(SwipeStackView(frame: CGRect()))
    var swipeStackView
    
    @AutoLayout(GridStackView(frame: CGRect()))
    var gridStackView
    
    @AutoLayout(LayoutStackView(frame: CGRect()))
    var layoutStackView
    
    // MARK: - Initializers
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        configureStackView()
        [swipeStackView, gridStackView, layoutStackView].forEach { addArrangedSubview($0) }
        
        addTapGestureRecognizers()
    }
    
    required init(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    // MARK: - Protocol method
    
    func configureStackView() {
        alignment = .center
        distribution = .equalSpacing
    }
}
