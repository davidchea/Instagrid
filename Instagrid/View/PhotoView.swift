//
//  PhotoView.swift
//  Instagrid
//
//  Created by David Chea on 11/12/2019.
//  Copyright © 2019 David Chea. All rights reserved.
//

import UIKit

class PhotoView: UIView {
    
    // MARK: - Initializers

    override init(frame: CGRect) {
        super.init(frame: frame)
        
        backgroundColor = .photoBlue
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
}
