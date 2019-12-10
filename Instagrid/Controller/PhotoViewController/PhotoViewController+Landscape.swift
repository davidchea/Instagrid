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
        landscapeConstraints.append(instagridImageView.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor))
        landscapeConstraints.append(instagridImageView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 10))
    }
}
