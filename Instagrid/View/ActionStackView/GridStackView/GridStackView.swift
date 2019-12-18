//
//  GridStackView.swift
//  Instagrid
//
//  Created by David Chea on 11/12/2019.
//  Copyright © 2019 David Chea. All rights reserved.
//

import UIKit

class GridStackView: UIStackView, StackView {
    
    // MARK: - Properties
    
    private let backgroundView: UIView = {
        let view = UIView()
        view.backgroundColor = .layoutBlue
        view.translatesAutoresizingMaskIntoConstraints = false
        
        return view
    }()
    
    @AutoLayout(ImageStackView(frame: CGRect()))
    var topImageStackView
    
    @AutoLayout(ImageStackView(frame: CGRect()))
    var bottomImageStackView
    
    let imagePickerController = UIImagePickerController()
    
    // MARK: - Initializers

    override init(frame: CGRect) {
        super.init(frame: frame)
        
        configureStackView()
        
        insertSubview(backgroundView, at: 0)
        backgroundView.fill(to: self)
        [topImageStackView, bottomImageStackView].forEach { addArrangedSubview($0) }
        
        imagePickerController.delegate = self
    }
    
    required init(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    // MARK: - Protocol method
    
    func configureStackView() {
        axis = .vertical
        distribution = .fillEqually
        spacing = .gridSpacing
        
        isLayoutMarginsRelativeArrangement = true
        layoutMargins = UIEdgeInsets(top: .gridSpacing, left: .gridSpacing, bottom: .gridSpacing, right: .gridSpacing)
    }
}
