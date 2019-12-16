//
//  InstagridViewController+Portrait.swift
//  Instagrid
//
//  Created by David Chea on 14/12/2019.
//  Copyright © 2019 David Chea. All rights reserved.
//

import UIKit

extension InstagridViewController {
    
    // MARK: - Methods
    
    func addPortraitConstraints() {
        let instagridImageView = instagridStackView.instagridImageView
        portraitConstraints.append(instagridImageView.widthAnchor.constraint(equalTo: instagridStackView.widthAnchor, multiplier: 0.3))
        portraitConstraints.append(instagridImageView.heightAnchor.constraint(equalTo: instagridStackView.heightAnchor, multiplier: 0.1))
        
        let gridView = instagridStackView.gridStackView.gridView
        portraitConstraints.append(gridView.widthAnchor.constraint(equalTo: instagridStackView.widthAnchor, multiplier: 0.8))
    }
    
    func activatePortraitConstraints() {
        instagridStackView.gridStackView.axis = .vertical
        instagridStackView.gridStackView.layoutStackView.axis = .horizontal
        
        instagridStackView.spacing = 100
        
        instagridStackView.gridStackView.swipeStackView.swipeImageView.image = UIImage(named: "Arrow Up")
        instagridStackView.gridStackView.swipeStackView.swipeLabel.text = "Swipe up to share"
        
        NSLayoutConstraint.deactivate(landscapeConstraints)
        NSLayoutConstraint.activate(portraitConstraints)
    }
}
