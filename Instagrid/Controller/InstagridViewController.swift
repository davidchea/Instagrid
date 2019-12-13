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
    
    let instagridImageView: UIImageView = {
        let instagridImageView = UIImageView(image: UIImage(named: "Instagrid"))
        instagridImageView.contentMode = .scaleAspectFit
        instagridImageView.translatesAutoresizingMaskIntoConstraints = false
        
        return instagridImageView
    }()
    
    let instagridStackView: InstagridStackView = {
        let instagridStackView = InstagridStackView(frame: CGRect())
        instagridStackView.translatesAutoresizingMaskIntoConstraints = false
        
        return instagridStackView
    }()
    
    var portraitConstraints = [NSLayoutConstraint]()
    var landscapeConstraints = [NSLayoutConstraint]()
    
    // MARK: - Life cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .backgroundBlue
        
        addSubviews()
        
        setMainConstraints()
        addConstraints()
    }
    
    override func viewDidLayoutSubviews() {
        if UIDevice.current.orientation.isPortrait {
            instagridStackView.axis = .vertical
            instagridStackView.layoutStackView.axis = .horizontal
            
            instagridStackView.swipeStackView.swipeImageView.image = UIImage(named: "Arrow Up")
            instagridStackView.swipeStackView.swipeLabel.text = "Swipe up to share"
            
            NSLayoutConstraint.deactivate(landscapeConstraints)
            NSLayoutConstraint.activate(portraitConstraints)
        } else {
            instagridStackView.axis = .horizontal
            instagridStackView.layoutStackView.axis = .vertical
            
            instagridStackView.swipeStackView.swipeImageView.image = UIImage(named: "Arrow Left")
            instagridStackView.swipeStackView.swipeLabel.text = "Swipe left to share"
            
            NSLayoutConstraint.deactivate(portraitConstraints)
            NSLayoutConstraint.activate(landscapeConstraints)
        }
    }
    
    // MARK: - Method
    
    private func addSubviews() {
        view.addSubview(instagridImageView)
        view.addSubview(instagridStackView)
    }
}