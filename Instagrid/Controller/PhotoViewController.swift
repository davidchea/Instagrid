//
//  PhotoViewController.swift
//  Instagrid
//
//  Created by David Chea on 10/12/2019.
//  Copyright © 2019 David Chea. All rights reserved.
//

import UIKit

class PhotoViewController: UIViewController {
    
    // MARK: - Property
    
    let instagridImageView = UIImageView(image: UIImage(named: "Instagrid"))
    
    // MARK: - Life cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .backgroundBlue
        
        view.addSubview(instagridImageView)
        setConstraints(uiView: instagridImageView)
    }
    
    // MARK: - Method
    
    private func setConstraints(uiView: UIView) {
        uiView.translatesAutoresizingMaskIntoConstraints = false
         
      
        NSLayoutConstraint.activate([
            uiView.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor),
            uiView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 100)
        ])

         
        

    }
}
