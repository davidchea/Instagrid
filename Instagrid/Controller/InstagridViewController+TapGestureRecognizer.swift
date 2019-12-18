//
//  InstagridViewController+TapGestureRecognizer.swift
//  Instagrid
//
//  Created by David Chea on 18/12/2019.
//  Copyright © 2019 David Chea. All rights reserved.
//

import UIKit

extension InstagridViewController: TapGestureRecognizer {
    
    // MARK: - Protocol method
    
    func addTapGestureRecognizers() {
        let gridStackView = instagridStackView.actionStackView.gridStackView
        gridStackView.topImageStackView.leftPlusView.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(imageTapped(_:))))
        gridStackView.topImageStackView.rightPlusView.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(imageTapped(_:))))
        gridStackView.bottomImageStackView.leftPlusView.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(imageTapped(_:))))
        gridStackView.bottomImageStackView.rightPlusView.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(imageTapped(_:))))
    }
    
    // MARK: - Method
    
    @objc private func imageTapped(_ tapGestureRecognizer: UITapGestureRecognizer) {
        imageTappedIdentifier = tapGestureRecognizer.view!.accessibilityIdentifier
        present(imagePickerController, animated: true, completion: nil)
    }
}
