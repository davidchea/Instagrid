//
//  InstagridViewController+Landscape.swift
//  Instagrid
//
//  Created by David Chea on 14/12/2019.
//  Copyright © 2019 David Chea. All rights reserved.
//

import UIKit

extension InstagridViewController {
    
    // MARK: - Method
    
    func addLandscapeConstraints() {
        let safeArea = view.safeAreaLayoutGuide
        
        landscapeConstraints.append(instagridImageView.topAnchor.constraint(equalTo: safeArea.topAnchor, constant: 10))
        
        landscapeConstraints.append(instagridStackView.topAnchor.constraint(equalTo: instagridImageView.bottomAnchor, constant: 20))
        landscapeConstraints.append(instagridStackView.leadingAnchor.constraint(equalTo: safeArea.leadingAnchor))
        landscapeConstraints.append(instagridStackView.trailingAnchor.constraint(equalTo: safeArea.trailingAnchor).reducePriority())
        
        let swipeImageView = instagridStackView.swipeStackView.swipeImageView
        landscapeConstraints.append(swipeImageView.heightAnchor.constraint(equalTo: safeArea.widthAnchor, multiplier: 0.01))
        
        let swipeStackViewEmptyView = instagridStackView.swipeStackView.arrangedSubviews.first!
        landscapeConstraints.append(swipeStackViewEmptyView.heightAnchor.constraint(equalTo: safeArea.heightAnchor, multiplier: 0.3))
       
        let layoutView = instagridStackView.layoutView
        landscapeConstraints.append(layoutView.widthAnchor.constraint(equalTo: safeArea.heightAnchor, multiplier: 0.8))
        landscapeConstraints.append(layoutView.centerXAnchor.constraint(equalTo: safeArea.centerXAnchor).reducePriority())
        
        let layoutStackView = instagridStackView.layoutStackView
        landscapeConstraints.append(layoutStackView.widthAnchor.constraint(equalTo: safeArea.widthAnchor, multiplier: 0.1).reducePriority())
    }
}
