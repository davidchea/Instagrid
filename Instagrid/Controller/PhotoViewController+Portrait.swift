//
//  PhotoViewController+Portrait.swift
//  Instagrid
//
//  Created by David Chea on 10/12/2019.
//  Copyright © 2019 David Chea. All rights reserved.
//

import UIKit

extension PhotoViewController {
    
    // MARK: - Method
    
    func addPortraitConstraints(safeArea: UILayoutGuide) {
        portraitConstraints.append(instagridImageView.widthAnchor.constraint(equalTo: safeArea.widthAnchor, multiplier: 0.3))
        portraitConstraints.append(instagridImageView.heightAnchor.constraint(equalTo: safeArea.heightAnchor, multiplier: 0.1))
        portraitConstraints.append(instagridImageView.centerXAnchor.constraint(equalTo: safeArea.centerXAnchor))
        portraitConstraints.append(instagridImageView.topAnchor.constraint(equalTo: safeArea.topAnchor))
        
        instagridStackView.axis = .vertical
        portraitConstraints.append(instagridStackView.centerXAnchor.constraint(equalTo: safeArea.centerXAnchor))
        portraitConstraints.append(instagridStackView.topAnchor.constraint(equalTo: instagridImageView.bottomAnchor))
        
        let swipeImageView = instagridStackView.swipeStackView.swipeImageView
        portraitConstraints.append(swipeImageView.heightAnchor.constraint(equalTo: safeArea.heightAnchor, multiplier: 0.01))
    }
}
