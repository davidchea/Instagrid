//
//  InstagridViewController+Constraint.swift
//  Instagrid
//
//  Created by David Chea on 10/12/2019.
//  Copyright © 2019 David Chea. All rights reserved.
//

import UIKit

extension InstagridViewController {
    
    // MARK: - Methods
    
    func setMainConstraints() {
        let safeArea = view.safeAreaLayoutGuide
        
        let layoutView = instagridStackView.layoutView
        let layoutViewHeightConstraint = layoutView.heightAnchor.constraint(equalTo: layoutView.widthAnchor)
        layoutViewHeightConstraint.priority = UILayoutPriority(999)
        
        NSLayoutConstraint.activate([
            instagridImageView.widthAnchor.constraint(equalTo: safeArea.widthAnchor, multiplier: 0.3),
            instagridImageView.heightAnchor.constraint(equalTo: safeArea.heightAnchor, multiplier: 0.1),
            instagridImageView.centerXAnchor.constraint(equalTo: safeArea.centerXAnchor),
            
            layoutViewHeightConstraint
        ])
    }
    
    func addSpecificConstraints() {
        addPortraitConstraints()
        addLandscapeConstraints()
    }
}
