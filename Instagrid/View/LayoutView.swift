//
//  LayoutView.swift
//  Instagrid
//
//  Created by David Chea on 11/12/2019.
//  Copyright © 2019 David Chea. All rights reserved.
//

import UIKit

class LayoutView: UIView {
    
    // MARK: - Properties
    
    @AutoLayout(view: UIImageView(image: UIImage(named: "Plus")))
    private var firstImageView
    
    @AutoLayout(view: UIImageView(image: UIImage(named: "Plus")))
    private var secondImageView

    @AutoLayout(view: UIImageView(image: UIImage(named: "Plus")))
    private var thirdImageView
    
    @AutoLayout(view: UIImageView(image: UIImage(named: "Plus")))
    private var fourthImageView
    
    private var firstLayoutConstraints = [NSLayoutConstraint]()
    private var secondLayoutConstraints = [NSLayoutConstraint]()
    private var thirdLayoutConstraints = [NSLayoutConstraint]()
    
    // MARK: - Initializers

    override init(frame: CGRect) {
        super.init(frame: frame)
        
        backgroundColor = .layoutBlue
        addSubviews([firstImageView, secondImageView, thirdImageView, fourthImageView])
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
}