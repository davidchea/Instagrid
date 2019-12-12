//
//  SwipeView.swift
//  Instagrid
//
//  Created by David Chea on 11/12/2019.
//  Copyright © 2019 David Chea. All rights reserved.
//

import UIKit

class SwipeView: UIStackView {
    
    // MARK: - Properties
    
    let arrowImageView: UIImageView = {
        let arrowImageView = UIImageView(image: nil)
        arrowImageView.contentMode = .scaleAspectFit
        arrowImageView.translatesAutoresizingMaskIntoConstraints = false
        
        return arrowImageView
    }()
    
    let swipeLabel: UILabel = {
        let swipeLabel = UILabel()
        swipeLabel.font = UIFont(name: "Delm", size: 26)
        swipeLabel.translatesAutoresizingMaskIntoConstraints = false
        
        return swipeLabel
    }()
    
    // MARK: - Initializers
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        addArrangedSubview(arrowImageView)
    }
    
    
    
 
    
    
    required init(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
