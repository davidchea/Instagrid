//
//  PlusView.swift
//  Instagrid
//
//  Created by David Chea on 18/12/2019.
//  Copyright © 2019 David Chea. All rights reserved.
//

import UIKit

class PlusView: UIView {
    
    // MARK: - Property
    
    @AutoLayout
    private var plusImageView = UIImageView(image: UIImage(named: "Plus"))
    
    // MARK: - Initializers
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        backgroundColor = .white
        
        addSubview(plusImageView)
        plusImageView.fillSuperview()
        plusImageView.contentMode = .center
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
}
