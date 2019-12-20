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

    @AutoLayout(UIImageView(image: UIImage(named: "Plus")))
    var plusImageView
    
    // MARK: - Initializers
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        addSubview(plusImageView)
        plusImageView.fillSuperview()
        plusImageView.contentMode = .center
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
}
