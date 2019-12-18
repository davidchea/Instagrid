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
        activateConstraints()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    // MARK: - Method
    
    private func activateConstraints() {
        NSLayoutConstraint.activate([
            plusImageView.centerXAnchor.constraint(equalTo: centerXAnchor),
            plusImageView.centerYAnchor.constraint(equalTo: centerYAnchor)
        ])
    }
}
