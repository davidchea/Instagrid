//
//  InstagridStackView.swift
//  Instagrid
//
//  Created by David Chea on 11/12/2019.
//  Copyright © 2019 David Chea. All rights reserved.
//

import UIKit

class InstagridStackView: UIStackView {
    
    // MARK: - Properties
    
    let swipeStackView: SwipeStackView = {
        let swipeStackView = SwipeStackView(frame: CGRect())
        swipeStackView.translatesAutoresizingMaskIntoConstraints = false
        
        return swipeStackView
    }()
    
    let layoutView: LayoutView = {
        let layoutView = LayoutView(frame: CGRect())
        layoutView.translatesAutoresizingMaskIntoConstraints = false
        
        return layoutView
    }()
    
    let layoutStackView: LayoutStackView = {
        let layoutStackView = LayoutStackView(frame: CGRect())
        layoutStackView.translatesAutoresizingMaskIntoConstraints = false
        
        return layoutStackView
    }()
    
    // MARK: - Initializers
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        addArrangedSubviews([swipeStackView, layoutView, UIView(), layoutStackView])
    }
    
    required init(coder: NSCoder) {
        super.init(coder: coder)
    }
}
