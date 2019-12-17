//
//  ImageStackView.swift
//  Instagrid
//
//  Created by David Chea on 17/12/2019.
//  Copyright © 2019 David Chea. All rights reserved.
//

import UIKit

class ImageStackView: UIStackView, StackView {
    
    // MARK: - Properties
    
    @AutoLayout(UIImageView(image: UIImage(named: "Plus")))
    var leftImageView
    
    @AutoLayout(UIImageView(image: UIImage(named: "Plus")))
    var rightImageView
    
    // MARK: - Initializers
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setWhiteBackgrounds()
        
        configureStackView()
        [leftImageView, rightImageView].forEach { addArrangedSubview($0) }
    }
    
    required init(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    // MARK: - Protocol method
    
    func configureStackView() {
        spacing = .gridSpacing
    }
    
    // MARK: - Method
    
    private func setWhiteBackgrounds() {
        leftImageView.backgroundColor = .white
        rightImageView.backgroundColor = .white
    }
}
