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
    
    func setMainConstraints() {
        let safeArea = view.safeAreaLayoutGuide
        
        NSLayoutConstraint.activate([
            instagridImageView.widthAnchor.constraint(equalTo: safeArea.widthAnchor, multiplier: 0.3),
            instagridImageView.heightAnchor.constraint(equalTo: safeArea.heightAnchor, multiplier: 0.1),
            instagridImageView.centerXAnchor.constraint(equalTo: safeArea.centerXAnchor),
            instagridImageView.topAnchor.constraint(equalTo: safeArea.topAnchor),
            
            instagridStackView.centerXAnchor.constraint(equalTo: safeArea.centerXAnchor),
            instagridStackView.topAnchor.constraint(equalTo: instagridImageView.bottomAnchor),
            instagridStackView.bottomAnchor.constraint(equalTo: safeArea.bottomAnchor, constant: -20)
        ])
    }
    
    func addConstraints() {
        addPortraitConstraints()
        addLandscapeConstraints()
    }
    
    func addPortraitConstraints() {
        let safeArea = view.safeAreaLayoutGuide
        
        let swipeImageView = instagridStackView.swipeStackView.swipeImageView
        portraitConstraints.append(swipeImageView.heightAnchor.constraint(equalTo: safeArea.heightAnchor, multiplier: 0.01))
        
        let mainImageView = instagridStackView.mainImageView
        portraitConstraints.append(mainImageView.widthAnchor.constraint(equalTo: safeArea.widthAnchor, multiplier: 0.8))
    }
    
    func addLandscapeConstraints() {
        let safeArea = view.safeAreaLayoutGuide
       
        let swipeImageView = instagridStackView.swipeStackView.swipeImageView
        landscapeConstraints.append(swipeImageView.heightAnchor.constraint(equalTo: safeArea.widthAnchor, multiplier: 0.01))
        
        let mainImageView = instagridStackView.mainImageView
        landscapeConstraints.append(mainImageView.widthAnchor.constraint(equalTo: safeArea.heightAnchor, multiplier: 0.8))
    }
}
