//
//  InstagridStackView.swift
//  Instagrid
//
//  Created by David Chea on 11/12/2019.
//  Copyright © 2019 David Chea. All rights reserved.
//

import UIKit

class InstagridStackView: UIStackView {
    
    // MARK: - Properties
    
    let swipeStackView: SwipeStackView = {
        let swipeStackView = SwipeStackView(frame: CGRect())
        swipeStackView.translatesAutoresizingMaskIntoConstraints = false
        
        return swipeStackView
    }()
    
    let photoView: PhotoView = {
        let photoView = PhotoView(frame: CGRect())
        photoView.translatesAutoresizingMaskIntoConstraints = false
        
        return photoView
    }()
    
    // MARK: - Initializers
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        addArrangedSubview(swipeStackView)
        addArrangedSubview(photoView)
    }
    
    required init(coder: NSCoder) {
        super.init(coder: coder)
    }
}
