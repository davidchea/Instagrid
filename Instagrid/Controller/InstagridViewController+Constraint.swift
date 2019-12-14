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
        
        let mainImageView = instagridStackView.mainImageView
        let mainImageViewHeightConstraint = mainImageView.heightAnchor.constraint(equalTo: mainImageView.widthAnchor)
        mainImageViewHeightConstraint.priority = UILayoutPriority(999)
        
        NSLayoutConstraint.activate([
            instagridImageView.widthAnchor.constraint(equalTo: safeArea.widthAnchor, multiplier: 0.3),
            instagridImageView.heightAnchor.constraint(equalTo: safeArea.heightAnchor, multiplier: 0.1),
            instagridImageView.centerXAnchor.constraint(equalTo: safeArea.centerXAnchor),
            
            instagridStackView.centerXAnchor.constraint(equalTo: safeArea.centerXAnchor),
            
            mainImageViewHeightConstraint
        ])
    }
    
    func addSpecificConstraints() {
        addPortraitConstraints()
        addLandscapeConstraints()
    }
}
