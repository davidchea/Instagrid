//
//  InstagridViewController+Landscape.swift
//  Instagrid
//
//  Created by David Chea on 14/12/2019.
//  Copyright © 2019 David Chea. All rights reserved.
//

import UIKit

extension InstagridViewController {
    
    // MARK: - Method
    
    func addLandscapeConstraints() {
        let safeArea = view.safeAreaLayoutGuide
        
        landscapeConstraints.append(instagridImageView.topAnchor.constraint(equalTo: safeArea.topAnchor, constant: 10))
        
        landscapeConstraints.append(instagridStackView.topAnchor.constraint(equalTo: instagridImageView.bottomAnchor, constant: 30))
        landscapeConstraints.append(instagridStackView.bottomAnchor.constraint(equalTo: safeArea.bottomAnchor, constant: -20))
       
        let swipeImageView = instagridStackView.swipeStackView.swipeImageView
        landscapeConstraints.append(swipeImageView.heightAnchor.constraint(equalTo: safeArea.widthAnchor, multiplier: 0.01))
        
        let mainImageView = instagridStackView.mainImageView
        landscapeConstraints.append(mainImageView.widthAnchor.constraint(equalTo: safeArea.heightAnchor, multiplier: 0.8))
        
        let layoutStackView = instagridStackView.layoutStackView
        let layoutStackViewHeightConstraint = layoutStackView.widthAnchor.constraint(equalTo: safeArea.widthAnchor, multiplier: 0.1)
        layoutStackViewHeightConstraint.priority = UILayoutPriority(999)
        landscapeConstraints.append(layoutStackViewHeightConstraint)
    }
}
