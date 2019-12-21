//
//  PlusView.swift
//  Instagrid
//
//  Created by David Chea on 18/12/2019.
//  Copyright © 2019 David Chea. All rights reserved.
//

import UIKit

class PlusView: UIView {
    
    // MARK: - Properties
    
    let plusImageView: UIImageView = {
        let imageView = UIImageView(image: UIImage(named: "Plus"))
        imageView.contentMode = .center
        imageView.translatesAutoresizingMaskIntoConstraints = false
        
        return imageView
    }()
    
    var hasImage = false
    
    // MARK: - Initializers
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        backgroundColor = .white
        
        addSubview(plusImageView)
        plusImageView.fillSuperview()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
}
