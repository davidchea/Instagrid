//
//  InstagridViewController+Portrait.swift
//  Instagrid
//
//  Created by David Chea on 14/12/2019.
//  Copyright © 2019 David Chea. All rights reserved.
//

import UIKit

extension InstagridViewController {
    
    // MARK: - Method
    
    func addPortraitConstraints() {
        let safeArea = view.safeAreaLayoutGuide
        
        portraitConstraints.append(instagridImageView.topAnchor.constraint(equalTo: safeArea.topAnchor))
        
        portraitConstraints.append(instagridStackView.centerXAnchor.constraint(equalTo: safeArea.centerXAnchor))
        portraitConstraints.append(instagridStackView.topAnchor.constraint(equalTo: instagridImageView.bottomAnchor, constant: 100))
        
        let layoutView = instagridStackView.layoutView
        portraitConstraints.append(layoutView.widthAnchor.constraint(equalTo: safeArea.widthAnchor, multiplier: 0.8))
    }
}
