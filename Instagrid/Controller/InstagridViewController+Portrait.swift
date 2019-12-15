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
        
        let swipeImageView = instagridStackView.swipeStackView.swipeImageView
        portraitConstraints.append(swipeImageView.heightAnchor.constraint(equalTo: safeArea.heightAnchor, multiplier: 0.01))
        
        let swipeStackViewEmptyViews = [
            instagridStackView.swipeStackView.arrangedSubviews.first!,
            instagridStackView.swipeStackView.arrangedSubviews.last!
        ]
        swipeStackViewEmptyViews.forEach { portraitConstraints.append($0.heightAnchor.constraint(equalToConstant: 0)) }
        
        let layoutView = instagridStackView.layoutView
        portraitConstraints.append(layoutView.widthAnchor.constraint(equalTo: safeArea.widthAnchor, multiplier: 0.8))
        
        let layoutStackView = instagridStackView.layoutStackView
        portraitConstraints.append(layoutStackView.heightAnchor.constraint(equalTo: safeArea.heightAnchor, multiplier: 0.1).reducePriority())
    }
}
