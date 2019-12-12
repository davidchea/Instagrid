//
//  PhotoViewController+Portrait.swift
//  Instagrid
//
//  Created by David Chea on 10/12/2019.
//  Copyright © 2019 David Chea. All rights reserved.
//

extension PhotoViewController {
    
    // MARK: - Method
    
    func addPortraitConstraints() {
        portraitConstraints.append(instagridImageView.widthAnchor.constraint(equalTo: view.safeAreaLayoutGuide.widthAnchor, multiplier: 0.3))
        portraitConstraints.append(instagridImageView.heightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.heightAnchor, multiplier: 0.1))
        portraitConstraints.append(instagridImageView.centerXAnchor.constraint(equalToSystemSpacingAfter: view.safeAreaLayoutGuide.centerXAnchor, multiplier: 1))
        portraitConstraints.append(instagridImageView.topAnchor.constraint(equalToSystemSpacingBelow: view.safeAreaLayoutGuide.topAnchor, multiplier: 1))
    }
}
