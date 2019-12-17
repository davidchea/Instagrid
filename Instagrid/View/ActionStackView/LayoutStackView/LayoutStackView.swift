//
//  LayoutStackView.swift
//  Instagrid
//
//  Created by David Chea on 13/12/2019.
//  Copyright © 2019 David Chea. All rights reserved.
//

import UIKit

class LayoutStackView: UIStackView, StackView {
    
    // MARK: - Properties
    
    @AutoLayout(UIImageView(image: UIImage(named: "Layout 1")))
    var firstLayoutImageView
    
    @AutoLayout(UIImageView(image: UIImage(named: "Selected Layout 2")))
    var secondLayoutImageView
    
    @AutoLayout(UIImageView(image: UIImage(named: "Layout 3")))
    var thirdLayoutImageView
    
    // MARK: - Initializers
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        configureStackView()
        [firstLayoutImageView, secondLayoutImageView, thirdLayoutImageView].forEach { addArrangedSubview($0) }
        
        addTapGestureRecognizers()
    }
    
    required init(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    // MARK: - Protocol method
    
    func configureStackView() {
        spacing = 25
    }
}
