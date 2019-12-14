//
//  InstagridViewController+Portrait.swift
//  Instagrid
//
//  Created by David Chea on 14/12/2019.
//  Copyright © 2019 David Chea. All rights reserved.
//

import UIKit

extension InstagridViewController {
    
    // MARK: - Method
    
    func addPortraitConstraints() {
        let safeArea = view.safeAreaLayoutGuide
        
        portraitConstraints.append(instagridImageView.topAnchor.constraint(equalTo: safeArea.topAnchor))
        
        portraitConstraints.append(instagridStackView.centerXAnchor.constraint(equalTo: safeArea.centerXAnchor))
        portraitConstraints.append(instagridStackView.topAnchor.constraint(equalTo: instagridImageView.bottomAnchor, constant: 100))
        portraitConstraints.append(instagridStackView.bottomAnchor.constraint(equalTo: safeArea.bottomAnchor, constant: -20))
        
        let swipeImageView = instagridStackView.swipeStackView.swipeImageView
        portraitConstraints.append(swipeImageView.heightAnchor.constraint(equalTo: safeArea.heightAnchor, multiplier: 0.01))
        
        let swipeStackViewFirstView = instagridStackView.swipeStackView.arrangedSubviews.first!
        portraitConstraints.append(swipeStackViewFirstView.heightAnchor.constraint(equalToConstant: 0))
        
        let swipeStackViewLastView = instagridStackView.swipeStackView.arrangedSubviews.last!
        portraitConstraints.append(swipeStackViewLastView.heightAnchor.constraint(equalToConstant: 0))
        
        let layoutView = instagridStackView.layoutView
        portraitConstraints.append(layoutView.widthAnchor.constraint(equalTo: safeArea.widthAnchor, multiplier: 0.8))
        
        let layoutStackView = instagridStackView.layoutStackView
        let layoutStackViewHeightConstraint = layoutStackView.heightAnchor.constraint(equalTo: safeArea.heightAnchor, multiplier: 0.1)
        layoutStackViewHeightConstraint.priority = UILayoutPriority(999)
        portraitConstraints.append(layoutStackViewHeightConstraint)
    }
}
