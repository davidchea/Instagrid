//
//  PhotoViewController+Constraint.swift
//  Instagrid
//
//  Created by David Chea on 10/12/2019.
//  Copyright © 2019 David Chea. All rights reserved.
//

import UIKit

extension PhotoViewController {
    
    // MARK: - Methods
    
    func addPortraitConstraints() {
        let safeArea = view.safeAreaLayoutGuide
        
        portraitConstraints.append(instagridImageView.widthAnchor.constraint(equalTo: safeArea.widthAnchor, multiplier: 0.3))
        portraitConstraints.append(instagridImageView.heightAnchor.constraint(equalTo: safeArea.heightAnchor, multiplier: 0.1))
        portraitConstraints.append(instagridImageView.centerXAnchor.constraint(equalTo: safeArea.centerXAnchor))
        portraitConstraints.append(instagridImageView.topAnchor.constraint(equalTo: safeArea.topAnchor))
        
        portraitConstraints.append(instagridStackView.centerXAnchor.constraint(equalTo: safeArea.centerXAnchor))
        portraitConstraints.append(instagridStackView.topAnchor.constraint(equalTo: instagridImageView.bottomAnchor, constant: 10))
        
        let swipeImageView = instagridStackView.swipeStackView.swipeImageView
        portraitConstraints.append(swipeImageView.heightAnchor.constraint(equalTo: safeArea.heightAnchor, multiplier: 0.01))
        
        let photoView = instagridStackView.photoView
        portraitConstraints.append(photoView.widthAnchor.constraint(equalTo: safeArea.widthAnchor, multiplier: 0.7))
        portraitConstraints.append(photoView.heightAnchor.constraint(equalTo: photoView.widthAnchor))
    }
    
    func addLandscapeConstraints() {
        let safeArea = view.safeAreaLayoutGuide
        
        landscapeConstraints.append(instagridImageView.widthAnchor.constraint(equalTo: safeArea.widthAnchor, multiplier: 0.3))
        landscapeConstraints.append(instagridImageView.heightAnchor.constraint(equalTo: safeArea.heightAnchor, multiplier: 0.1))
        landscapeConstraints.append(instagridImageView.centerXAnchor.constraint(equalTo: safeArea.centerXAnchor))
        landscapeConstraints.append(instagridImageView.topAnchor.constraint(equalTo: safeArea.topAnchor, constant: 10))
        
        landscapeConstraints.append(instagridStackView.centerYAnchor.constraint(equalTo: safeArea.centerYAnchor))
        landscapeConstraints.append(instagridStackView.leadingAnchor.constraint(equalTo: safeArea.leadingAnchor))
       
        let swipeImageView = instagridStackView.swipeStackView.swipeImageView
        landscapeConstraints.append(swipeImageView.heightAnchor.constraint(equalTo: safeArea.widthAnchor, multiplier: 0.01))
        
        let photoView = instagridStackView.photoView
        landscapeConstraints.append(photoView.widthAnchor.constraint(equalTo: safeArea.heightAnchor, multiplier: 0.7))
        landscapeConstraints.append(photoView.heightAnchor.constraint(equalTo: photoView.widthAnchor))
    }
}
