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
    
    @AutoLayout(PlusView(frame: CGRect()))
    var leftPlusView
    
    @AutoLayout(PlusView(frame: CGRect()))
    var rightPlusView
    
    // MARK: - Initializers
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        configureStackView()
        [leftPlusView, rightPlusView].forEach { addArrangedSubview($0) }
        
        setWhiteBackgrounds()
    }
    
    required init(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    // MARK: - Protocol method
    
    func configureStackView() {
        distribution = .fillEqually
        spacing = .gridSpacing
    }
    
    // MARK: - Method
    
    private func setWhiteBackgrounds() {
        leftPlusView.backgroundColor = .white
        rightPlusView.backgroundColor = .white
    }
}
