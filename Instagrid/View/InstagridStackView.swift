//
//  InstagridStackView.swift
//  Instagrid
//
//  Created by David Chea on 16/12/2019.
//  Copyright © 2019 David Chea. All rights reserved.
//

import UIKit

class InstagridStackView: UIStackView {
    
    // MARK: - Properties
    
    @AutoLayout(view: UIImageView(image: UIImage(named: "Instagrid")))
    var instagridImageView
    
    @AutoLayout(view: GridStackView(frame: CGRect()))
    var gridStackView
    
    // MARK: - Initializers
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        axis = .vertical
        alignment = .center
        
        [instagridImageView, gridStackView].forEach { addArrangedSubview($0) }
    }
    
    required init(coder: NSCoder) {
        super.init(coder: coder)
    }
}
