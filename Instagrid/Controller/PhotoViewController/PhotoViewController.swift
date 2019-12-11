//
//  PhotoViewController.swift
//  Instagrid
//
//  Created by David Chea on 10/12/2019.
//  Copyright © 2019 David Chea. All rights reserved.
//

import UIKit

class PhotoViewController: UIViewController {
    
    // MARK: - Properties
    
    let instagridImageView: UIImageView = {
        let instagridImageView = UIImageView(image: UIImage(named: "Instagrid"))
        instagridImageView.contentMode = .scaleAspectFit
        instagridImageView.translatesAutoresizingMaskIntoConstraints = false
        
        return instagridImageView
    }()
    
    
    
    var portraitConstraints = [NSLayoutConstraint]()
    var landscapeConstraints = [NSLayoutConstraint]()
    
    // MARK: - Life cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .backgroundBlue
        
        addSubviews()
        addPortraitConstraints()
        addLandscapeConstraints()
    }
    
    override func viewDidLayoutSubviews() {
        if UIDevice.current.orientation.isPortrait {
            NSLayoutConstraint.deactivate(landscapeConstraints)
            NSLayoutConstraint.activate(portraitConstraints)
        } else {
            NSLayoutConstraint.deactivate(portraitConstraints)
            NSLayoutConstraint.activate(landscapeConstraints)
        }
    }
}
