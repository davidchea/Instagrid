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
    
    func activateMainConstraints() {
        fillSafeArea()
        
        let swipeImageView = instagridStackView.gridStackView.swipeStackView.swipeImageView
        swipeImageView.widthAnchor.constraint(equalTo: instagridStackView.widthAnchor, multiplier: 0.03).isActive = true
        swipeImageView.heightAnchor.constraint(equalTo: instagridStackView.heightAnchor, multiplier: 0.03).isActive = true
        
        let gridView = instagridStackView.gridStackView.gridView
        gridView.heightAnchor.constraint(equalTo: gridView.widthAnchor).reducePriority().isActive = true
        
        let layoutImageViews = [
            instagridStackView.gridStackView.layoutStackView.firstLayoutImageView,
            instagridStackView.gridStackView.layoutStackView.secondLayoutImageView,
            instagridStackView.gridStackView.layoutStackView.thirdLayoutImageView
        ]
        layoutImageViews.forEach {
            $0.widthAnchor.constraint(equalTo: instagridStackView.widthAnchor, multiplier: 0.2).reducePriority().isActive = true
            $0.heightAnchor.constraint(equalTo: instagridStackView.heightAnchor, multiplier: 0.2).isActive = true
        }
    }
    
    private func fillSafeArea() {
        NSLayoutConstraint.activate([
            instagridStackView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            instagridStackView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
            instagridStackView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
            instagridStackView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor)
        ])
    }
    
    func addOrientationConstraints() {
        addPortraitConstraints()
        addLandscapeConstraints()
    }
}
