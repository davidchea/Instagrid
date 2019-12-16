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
        let safeArea = view.safeAreaLayoutGuide
        
        landscapeConstraints.append(instagridImageView.topAnchor.constraint(equalTo: safeArea.topAnchor, constant: 10))
        
        landscapeConstraints.append(instagridStackView.topAnchor.constraint(equalTo: instagridImageView.bottomAnchor, constant: 20))
        landscapeConstraints.append(instagridStackView.leadingAnchor.constraint(equalTo: safeArea.leadingAnchor))
        landscapeConstraints.append(instagridStackView.trailingAnchor.constraint(equalTo: safeArea.trailingAnchor).reducePriority())
       
        let layoutView = instagridStackView.layoutView
        landscapeConstraints.append(layoutView.widthAnchor.constraint(equalTo: safeArea.heightAnchor, multiplier: 0.8))
        landscapeConstraints.append(layoutView.centerXAnchor.constraint(equalTo: safeArea.centerXAnchor).reducePriority())
    }
    
    func activateLandscapeConstraints() {
        instagridStackView.axis = .horizontal
        instagridStackView.layoutStackView.axis = .vertical
        
        instagridStackView.swipeStackView.swipeImageView.image = UIImage(named: "Arrow Left")
        instagridStackView.swipeStackView.swipeLabel.text = "Swipe left to share"
        
        NSLayoutConstraint.deactivate(portraitConstraints)
        NSLayoutConstraint.activate(landscapeConstraints)
    }
}
