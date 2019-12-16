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
        
        let gridStackView = instagridStackView.gridStackView
        landscapeConstraints.append(gridStackView.leadingAnchor.constraint(equalTo: instagridStackView.leadingAnchor))
        landscapeConstraints.append(gridStackView.trailingAnchor.constraint(equalTo: instagridStackView.trailingAnchor))
       
        let gridView = gridStackView.gridView
        landscapeConstraints.append(gridView.widthAnchor.constraint(equalTo: instagridStackView.heightAnchor, multiplier: 0.8))
    }
    
    func activateLandscapeConstraints() {
        instagridStackView.gridStackView.axis = .horizontal
        instagridStackView.gridStackView.layoutStackView.axis = .vertical
        
        instagridStackView.spacing = .zero
        
        instagridStackView.gridStackView.swipeStackView.swipeImageView.image = UIImage(named: "Arrow Left")
        instagridStackView.gridStackView.swipeStackView.swipeLabel.text = "Swipe left to share"
        
        NSLayoutConstraint.deactivate(portraitConstraints)
        NSLayoutConstraint.activate(landscapeConstraints)
    }
}
