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
    
    func activateMainConstraints() {
        instagridStackView.fillLayoutGuide(view.safeAreaLayoutGuide)
        
        let swipeImageView = instagridStackView.actionStackView.swipeStackView.swipeImageView
        swipeImageView.widthAnchor.constraint(equalTo: instagridStackView.widthAnchor, multiplier: 0.03).isActive = true
        swipeImageView.heightAnchor.constraint(equalTo: instagridStackView.heightAnchor, multiplier: 0.03).isActive = true
        
        let gridStackView = instagridStackView.actionStackView.gridStackView
        gridStackView.heightAnchor.constraint(equalTo: gridStackView.widthAnchor).reducePriority().isActive = true
        
        let layoutImageViews = [
            instagridStackView.actionStackView.layoutStackView.firstLayoutImageView,
            instagridStackView.actionStackView.layoutStackView.secondLayoutImageView,
            instagridStackView.actionStackView.layoutStackView.thirdLayoutImageView
        ]
        layoutImageViews.forEach {
            $0.widthAnchor.constraint(equalTo: instagridStackView.widthAnchor, multiplier: 0.2).reducePriority().isActive = true
            $0.heightAnchor.constraint(equalTo: instagridStackView.heightAnchor, multiplier: 0.2).isActive = true
        }
    }
    
    func addOrientationConstraints() {
        addPortraitConstraints()
        addLandscapeConstraints()
    }
}
