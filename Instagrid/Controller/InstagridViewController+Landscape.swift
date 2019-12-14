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
        
        landscapeConstraints.append(instagridStackView.topAnchor.constraint(equalTo: instagridImageView.bottomAnchor, constant: 20))
        landscapeConstraints.append(instagridStackView.bottomAnchor.constraint(equalTo: safeArea.bottomAnchor, constant: -20))
        landscapeConstraints.append(instagridStackView.leadingAnchor.constraint(equalTo: safeArea.leadingAnchor))
        
        let instagridStackViewTrailingConstraint = instagridStackView.trailingAnchor.constraint(equalTo: safeArea.trailingAnchor)
        instagridStackViewTrailingConstraint.priority = UILayoutPriority(999)
        landscapeConstraints.append(instagridStackViewTrailingConstraint)
       
        let swipeImageView = instagridStackView.swipeStackView.swipeImageView
        landscapeConstraints.append(swipeImageView.heightAnchor.constraint(equalTo: safeArea.widthAnchor, multiplier: 0.01))
        
        let swipeStackViewFirstView = instagridStackView.swipeStackView.arrangedSubviews.first!
        landscapeConstraints.append(swipeStackViewFirstView.heightAnchor.constraint(equalTo: safeArea.heightAnchor, multiplier: 0.3))
       
        let layoutView = instagridStackView.layoutView
        landscapeConstraints.append(layoutView.widthAnchor.constraint(equalTo: safeArea.heightAnchor, multiplier: 0.8))
        
        let layoutViewCenterXConstraint = layoutView.centerXAnchor.constraint(equalTo: safeArea.centerXAnchor)
        layoutViewCenterXConstraint.priority = UILayoutPriority(999)
        landscapeConstraints.append(layoutViewCenterXConstraint)
        
        let layoutStackView = instagridStackView.layoutStackView
        let layoutStackViewWidthConstraint = layoutStackView.widthAnchor.constraint(equalTo: safeArea.widthAnchor, multiplier: 0.1)
        layoutStackViewWidthConstraint.priority = UILayoutPriority(999)
        landscapeConstraints.append(layoutStackViewWidthConstraint)
    }
}
