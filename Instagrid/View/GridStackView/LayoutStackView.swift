//
//  LayoutStackView.swift
//  Instagrid
//
//  Created by David Chea on 13/12/2019.
//  Copyright © 2019 David Chea. All rights reserved.
//

import UIKit

class LayoutStackView: UIStackView {
    
    // MARK: - Properties
    
    @AutoLayout(view: UIImageView(image: UIImage(named: "Layout 1")))
    var firstLayoutImageView
    
    @AutoLayout(view: UIImageView(image: UIImage(named: "Layout 2")))
    var secondLayoutImageView
    
    @AutoLayout(view: UIImageView(image: UIImage(named: "Layout 3")))
    var thirdLayoutImageView
    
    // MARK: - Initializers
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        spacing = 30
        addArrangedSubviews([firstLayoutImageView, secondLayoutImageView, thirdLayoutImageView])
    }
    
    required init(coder: NSCoder) {
        super.init(coder: coder)
    }
}
