//
//  GridStackView.swift
//  Instagrid
//
//  Created by David Chea on 11/12/2019.
//  Copyright © 2019 David Chea. All rights reserved.
//

import UIKit

class GridStackView: UIStackView {
    
    // MARK: - Properties
    
    @AutoLayout(view: SwipeStackView(frame: CGRect()))
    var swipeStackView
    
    @AutoLayout(view: GridView(frame: CGRect()))
    var gridView
    
    @AutoLayout(view: LayoutStackView(frame: CGRect()))
    var layoutStackView
    
    // MARK: - Initializers
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        alignment = .center
        distribution = .equalSpacing
        
        [swipeStackView, gridView, layoutStackView].forEach { addArrangedSubview($0) }
    }
    
    required init(coder: NSCoder) {
        super.init(coder: coder)
    }
}
