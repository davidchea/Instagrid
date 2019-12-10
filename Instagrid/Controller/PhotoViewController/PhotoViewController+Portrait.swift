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
        portraitConstraints.append(instagridImageView.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor))
        portraitConstraints.append(instagridImageView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 30))
    }
}
