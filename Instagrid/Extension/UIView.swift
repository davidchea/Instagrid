//
//  UIView.swift
//  Instagrid
//
//  Created by David Chea on 17/12/2019.
//  Copyright © 2019 David Chea. All rights reserved.
//

import UIKit

extension UIView {

    // MARK: - Methods

    /// Fill the superview with the selected view.
    func fillSuperview() {
        guard let superview = superview else { fatalError("No superview found.") }

        NSLayoutConstraint.activate([
            topAnchor.constraint(equalTo: superview.topAnchor),
            bottomAnchor.constraint(equalTo: superview.bottomAnchor),
            leadingAnchor.constraint(equalTo: superview.leadingAnchor),
            trailingAnchor.constraint(equalTo: superview.trailingAnchor)
        ])
    }

    /// Fill the layout guide with the selected view.
    func fillLayoutGuide(_ layoutGuide: UILayoutGuide) {
        NSLayoutConstraint.activate([
            topAnchor.constraint(equalTo: layoutGuide.topAnchor),
            bottomAnchor.constraint(equalTo: layoutGuide.bottomAnchor, constant: -10),
            leadingAnchor.constraint(equalTo: layoutGuide.leadingAnchor),
            trailingAnchor.constraint(equalTo: layoutGuide.trailingAnchor)
        ])
    }
}
