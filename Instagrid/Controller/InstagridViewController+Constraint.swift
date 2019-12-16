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
        let safeArea = view.safeAreaLayoutGuide
        
        instagridImageView.widthAnchor.constraint(equalTo: instagridStackView.widthAnchor, multiplier: 0.3).isActive = true
        instagridImageView.heightAnchor.constraint(equalTo: instagridStackView.heightAnchor, multiplier: 0.1).isActive = true
        instagridImageView.centerXAnchor.constraint(equalTo: safeArea.centerXAnchor).isActive = true
        
        instagridStackView.bottomAnchor.constraint(equalTo: safeArea.bottomAnchor, constant: -20).isActive = true
        
        let swipeImageView = instagridStackView.swipeStackView.swipeImageView
        swipeImageView.widthAnchor.constraint(equalTo: safeArea.widthAnchor, multiplier: 0.03).isActive = true
        swipeImageView.heightAnchor.constraint(equalTo: safeArea.heightAnchor, multiplier: 0.03).isActive = true
        
        let layoutView = instagridStackView.layoutView
        layoutView.heightAnchor.constraint(equalTo: layoutView.widthAnchor).reducePriority().isActive = true
        
        let layoutImageViews = [
            instagridStackView.layoutStackView.firstLayoutImageView,
            instagridStackView.layoutStackView.secondLayoutImageView,
            instagridStackView.layoutStackView.thirdLayoutImageView
        ]
        layoutImageViews.forEach {
            $0.widthAnchor.constraint(equalTo: safeArea.widthAnchor, multiplier: 0.2).isActive = true
            $0.heightAnchor.constraint(equalTo: safeArea.heightAnchor, multiplier: 0.2).isActive = true
        }
    }
    
    func addOrientationConstraints() {
        addPortraitConstraints()
        addLandscapeConstraints()
    }
}
