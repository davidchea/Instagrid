//
//  PhotoView.swift
//  Instagrid
//
//  Created by David Chea on 11/12/2019.
//  Copyright © 2019 David Chea. All rights reserved.
//

import UIKit

class PhotoView: UIView {
    
    // MARK: - Properties
    
    let firstImageView: UIImageView = {
        let firstImageView = UIImageView(image: UIImage(named: "Plus"))
        firstImageView.contentMode = .scaleAspectFit
        firstImageView.translatesAutoresizingMaskIntoConstraints = false
        
        return firstImageView
    }()
    
    let secondImageView: UIImageView = {
        let secondImageView = UIImageView(image: UIImage(named: "Plus"))
        secondImageView.contentMode = .scaleAspectFit
        secondImageView.translatesAutoresizingMaskIntoConstraints = false
        
        return secondImageView
    }()
    
    let thirdImageView: UIImageView = {
        let thirdImageView = UIImageView(image: UIImage(named: "Plus"))
        thirdImageView.contentMode = .scaleAspectFit
        thirdImageView.translatesAutoresizingMaskIntoConstraints = false
        
        return thirdImageView
    }()
    
    let fourthImageView: UIImageView = {
        let fourthImageView = UIImageView(image: UIImage(named: "Plus"))
        fourthImageView.contentMode = .scaleAspectFit
        fourthImageView.translatesAutoresizingMaskIntoConstraints = false
        
        return fourthImageView
    }()
    
    var firstLayoutConstraints = [NSLayoutConstraint]()
    var secondLayoutConstraints = [NSLayoutConstraint]()
    var thirdLayoutConstraints = [NSLayoutConstraint]()
    
    // MARK: - Initializers

    override init(frame: CGRect) {
        super.init(frame: frame)
        
        backgroundColor = .photoBlue
        
        addSubviews()
        addConstraints()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    // MARK: - Methods
    
    private func addSubviews() {
        addSubview(firstImageView)
        addSubview(secondImageView)
        addSubview(thirdImageView)
        addSubview(fourthImageView)
    }
    
    private func addConstraints() {
        addFirstLayoutConstraints()
        addSecondLayoutConstraints()
        addThirdLayoutConstraints()
    }
}
