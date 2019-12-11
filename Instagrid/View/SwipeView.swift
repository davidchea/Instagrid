//
//  SwipeView.swift
//  Instagrid
//
//  Created by David Chea on 11/12/2019.
//  Copyright © 2019 David Chea. All rights reserved.
//

import UIKit

class SwipeView: UIView {
    
    // MARK: - Properties

    lazy var arrowUpImageView: UIImageView = {
        let arrowUpImageView = UIImageView(image: UIImage(named: "Arrow Up"))
        arrowUpImageView.contentMode = .scaleAspectFit
        arrowUpImageView.translatesAutoresizingMaskIntoConstraints = false
        
        return arrowUpImageView
    }()
    
    let arrowLeftImageView: UIImageView = {
        let arrowLeftImageView = UIImageView(image: UIImage(named: "Arrow Left"))
        arrowLeftImageView.contentMode = .scaleAspectFit
        arrowLeftImageView.translatesAutoresizingMaskIntoConstraints = false
        
        return arrowLeftImageView
    }()
    
    let swipeUpLabel: UILabel = {
        let swipeUpLabel = UILabel()
        swipeUpLabel.text = "Swipe up to share"
        swipeUpLabel.font = UIFont(name: "Delm", size: 26)
        swipeUpLabel.translatesAutoresizingMaskIntoConstraints = false
        
        return swipeUpLabel
    }()
    
    let swipeLeftLabel: UILabel = {
        let swipeUpLabel = UILabel()
        swipeUpLabel.text = "Swipe left to share"
        swipeUpLabel.font = UIFont(name: "Delm", size: 26)
        swipeUpLabel.translatesAutoresizingMaskIntoConstraints = false
        
        return swipeUpLabel
    }()

}
