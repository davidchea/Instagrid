//
//  InstagridViewController.swift
//  Instagrid
//
//  Created by David Chea on 10/12/2019.
//  Copyright © 2019 David Chea. All rights reserved.
//

import UIKit

class InstagridViewController: UIViewController {
    
    // MARK: - Properties
    
    @AutoLayout(InstagridStackView(frame: CGRect()))
    var instagridStackView
    
    var portraitConstraints = [NSLayoutConstraint]()
    var landscapeConstraints = [NSLayoutConstraint]()
    
    let imagePickerController = UIImagePickerController()
    var imageTappedIdentifier: String!
    
    // MARK: - Life cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .backgroundBlue
        view.addSubview(instagridStackView)
        
        activateMainConstraints()
        addOrientationConstraints()
        
        addTapGestureRecognizers()
        imagePickerController.delegate = self
    }
    
    override func viewDidLayoutSubviews() {
        if UIDevice.current.orientation.isPortrait {
            activatePortraitConstraints()
        } else {
            activateLandscapeConstraints()
        }
    }
}
