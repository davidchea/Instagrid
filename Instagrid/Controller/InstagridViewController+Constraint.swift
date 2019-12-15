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
        
        let layoutView = instagridStackView.layoutView
        layoutView.heightAnchor.constraint(equalTo: layoutView.widthAnchor).reducePriority().isActive = true
    }
    
    func addOrientationConstraints() {
        addPortraitConstraints()
        addLandscapeConstraints()
    }
}
