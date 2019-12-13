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
    
    let firstLayoutImageView: UIImageView = {
        let firstLayoutImageView = UIImageView(image: UIImage(named: "Layout 1"))
        firstLayoutImageView.contentMode = .scaleAspectFit
        firstLayoutImageView.translatesAutoresizingMaskIntoConstraints = false
        
        return firstLayoutImageView
    }()
    
    let secondLayoutImageView: UIImageView = {
        let secondLayoutImageView = UIImageView(image: UIImage(named: "Layout 2"))
        secondLayoutImageView.contentMode = .scaleAspectFit
        secondLayoutImageView.translatesAutoresizingMaskIntoConstraints = false
        
        return secondLayoutImageView
    }()
    
    let thirdLayoutImageView: UIImageView = {
        let thirdLayoutImageView = UIImageView(image: UIImage(named: "Layout 3"))
        thirdLayoutImageView.contentMode = .scaleAspectFit
        thirdLayoutImageView.translatesAutoresizingMaskIntoConstraints = false
        
        return thirdLayoutImageView
    }()
    
    // MARK: - Initializers
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        distribution = .fillEqually
        addArrangedSubviews([firstLayoutImageView, secondLayoutImageView, thirdLayoutImageView])
    }
    
    required init(coder: NSCoder) {
        super.init(coder: coder)
    }
}
