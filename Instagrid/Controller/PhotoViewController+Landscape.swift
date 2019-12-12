//
//  PhotoViewController+Landscape.swift
//  Instagrid
//
//  Created by David Chea on 10/12/2019.
//  Copyright © 2019 David Chea. All rights reserved.
//

extension PhotoViewController {
    
    // MARK: - Method
    
    func addLandscapeConstraints() {
        landscapeConstraints.append(instagridImageView.widthAnchor.constraint(equalTo: view.safeAreaLayoutGuide.widthAnchor, multiplier: 0.3))
        landscapeConstraints.append(instagridImageView.heightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.heightAnchor, multiplier: 0.1))
        landscapeConstraints.append(instagridImageView.centerXAnchor.constraint(equalToSystemSpacingAfter: view.safeAreaLayoutGuide.centerXAnchor, multiplier: 1))
        landscapeConstraints.append(instagridImageView.topAnchor.constraint(equalToSystemSpacingBelow: view.safeAreaLayoutGuide.topAnchor, multiplier: 1))
    }
}
