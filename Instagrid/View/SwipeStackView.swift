//
//  SwipeStackView.swift
//  Instagrid
//
//  Created by David Chea on 12/12/2019.
//  Copyright © 2019 David Chea. All rights reserved.
//

import UIKit

class SwipeStackView: UIStackView {
    
    // MARK: - Properties
    
    let swipeImageView: UIImageView = {
        let swipeImageView = UIImageView(image: nil)
        swipeImageView.contentMode = .scaleAspectFit
        swipeImageView.translatesAutoresizingMaskIntoConstraints = false
        
        return swipeImageView
    }()
    
    let swipeLabel: UILabel = {
        let swipeLabel = UILabel()
        swipeLabel.font = UIFont(name: "Delm-Medium", size: 26)
        swipeLabel.textColor = .white
        swipeLabel.translatesAutoresizingMaskIntoConstraints = false
        
        return swipeLabel
    }()
    
    // MARK: - Initializers
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        axis = .vertical
        spacing = 10
        
        addArrangedSubview(swipeImageView)
        addArrangedSubview(swipeLabel)
    }
    
    required init(coder: NSCoder) {
        super.init(coder: coder)
    }
}
