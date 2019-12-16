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
    
    @AutoLayout(view: SwipeStackView(frame: CGRect()))
    var swipeStackView
    
    @AutoLayout(view: GridView(frame: CGRect()))
    var layoutView
    
    @AutoLayout(view: LayoutStackView(frame: CGRect()))
    var layoutStackView
    
    // MARK: - Initializers
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        alignment = .center
        distribution = .equalCentering
        
        addArrangedSubviews([swipeStackView, layoutView, layoutStackView])
    }
    
    required init(coder: NSCoder) {
        super.init(coder: coder)
    }
}
