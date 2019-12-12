//
//  PhotoViewController+Landscape.swift
//  Instagrid
//
//  Created by David Chea on 10/12/2019.
//  Copyright © 2019 David Chea. All rights reserved.
//

import UIKit

extension PhotoViewController {
    
    // MARK: - Method
    
    func addLandscapeConstraints(safeArea: UILayoutGuide) {
        landscapeConstraints.append(instagridImageView.widthAnchor.constraint(equalTo: safeArea.widthAnchor, multiplier: 0.3))
        landscapeConstraints.append(instagridImageView.heightAnchor.constraint(equalTo: safeArea.heightAnchor, multiplier: 0.1))
        landscapeConstraints.append(instagridImageView.centerXAnchor.constraint(equalTo: safeArea.centerXAnchor))
        landscapeConstraints.append(instagridImageView.topAnchor.constraint(equalTo: safeArea.topAnchor, constant: 10))
        
        instagridStackView.axis = .horizontal
        landscapeConstraints.append(instagridStackView.centerYAnchor.constraint(equalTo: safeArea.centerYAnchor))
        landscapeConstraints.append(instagridStackView.leadingAnchor.constraint(equalTo: safeArea.leadingAnchor))
       
        let swipeImageView = instagridStackView.swipeStackView.swipeImageView
        landscapeConstraints.append(swipeImageView.heightAnchor.constraint(equalTo: safeArea.widthAnchor, multiplier: 0.01))
    }
}
