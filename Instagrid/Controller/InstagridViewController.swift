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
    
    @AutoLayout(view: UIImageView(image: UIImage(named: "Instagrid")))
    var instagridImageView
    
    @AutoLayout(view: InstagridStackView(frame: CGRect()))
    var instagridStackView
    
    var portraitConstraints = [NSLayoutConstraint]()
    var landscapeConstraints = [NSLayoutConstraint]()
    
    // MARK: - Life cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .backgroundBlue
        view.addSubviews([instagridImageView, instagridStackView])
        
        activateMainConstraints()
        addOrientationConstraints()
    }
    
    override func viewDidLayoutSubviews() {
        let layoutStackView = instagridStackView.layoutStackView
        
        let swipeImageView = instagridStackView.swipeStackView.swipeImageView
        let swipeLabel = instagridStackView.swipeStackView.swipeLabel
        
        if UIDevice.current.orientation.isPortrait {
            instagridStackView.axis = .vertical
            layoutStackView.axis = .horizontal
            
            swipeImageView.image = UIImage(named: "Arrow Up")
            swipeLabel.text = "Swipe up to share"
            
            NSLayoutConstraint.deactivate(landscapeConstraints)
            NSLayoutConstraint.activate(portraitConstraints)
        } else {
            instagridStackView.axis = .horizontal
            layoutStackView.axis = .vertical
            
            swipeImageView.image = UIImage(named: "Arrow Left")
            swipeLabel.text = "Swipe left to share"
            
            NSLayoutConstraint.deactivate(portraitConstraints)
            NSLayoutConstraint.activate(landscapeConstraints)
        }
    }
}
