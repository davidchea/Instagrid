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
        let safeArea = view.safeAreaLayoutGuide
        
        portraitConstraints.append(instagridImageView.topAnchor.constraint(equalTo: safeArea.topAnchor))
        
        portraitConstraints.append(instagridStackView.centerXAnchor.constraint(equalTo: safeArea.centerXAnchor))
        portraitConstraints.append(instagridStackView.topAnchor.constraint(equalTo: instagridImageView.bottomAnchor, constant: 100))
        
        let layoutView = instagridStackView.layoutView
        portraitConstraints.append(layoutView.widthAnchor.constraint(equalTo: safeArea.widthAnchor, multiplier: 0.8))
    }
    
    func activatePortraitConstraints() {
        instagridStackView.axis = .vertical
        instagridStackView.layoutStackView.axis = .horizontal
        
        instagridStackView.swipeStackView.swipeImageView.image = UIImage(named: "Arrow Up")
        instagridStackView.swipeStackView.swipeLabel.text = "Swipe up to share"
        
        NSLayoutConstraint.deactivate(landscapeConstraints)
        NSLayoutConstraint.activate(portraitConstraints)
    }
}
