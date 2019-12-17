//
//  InstagridViewController+Landscape.swift
//  Instagrid
//
//  Created by David Chea on 14/12/2019.
//  Copyright © 2019 David Chea. All rights reserved.
//

import UIKit

extension InstagridViewController {
    
    // MARK: - Methods
    
    func addLandscapeConstraints() {
        let instagridImageView = instagridStackView.instagridImageView
        landscapeConstraints.append(instagridImageView.widthAnchor.constraint(equalTo: instagridStackView.heightAnchor, multiplier: 0.3))
        landscapeConstraints.append(instagridImageView.heightAnchor.constraint(equalTo: instagridStackView.widthAnchor, multiplier: 0.07))
        
        let actionStackView = instagridStackView.actionStackView
        landscapeConstraints.append(actionStackView.leadingAnchor.constraint(equalTo: instagridStackView.leadingAnchor))
        landscapeConstraints.append(actionStackView.trailingAnchor.constraint(equalTo: instagridStackView.trailingAnchor))
       
        let gridStackView = actionStackView.gridStackView
        landscapeConstraints.append(gridStackView.widthAnchor.constraint(equalTo: instagridStackView.heightAnchor, multiplier: 0.8))
    }
    
    func activateLandscapeConstraints() {
        instagridStackView.actionStackView.axis = .horizontal
        instagridStackView.actionStackView.layoutStackView.axis = .vertical
        
        instagridStackView.spacing = .zero
        
        instagridStackView.actionStackView.swipeStackView.swipeImageView.image = UIImage(named: "Arrow Left")
        instagridStackView.actionStackView.swipeStackView.swipeLabel.text = "Swipe left to share"
        
        NSLayoutConstraint.deactivate(portraitConstraints)
        NSLayoutConstraint.activate(landscapeConstraints)
    }
}
