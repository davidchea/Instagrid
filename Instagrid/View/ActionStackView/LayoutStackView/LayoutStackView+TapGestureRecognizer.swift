//
//  LayoutStackView+TapGestureRecognizer.swift
//  Instagrid
//
//  Created by David Chea on 17/12/2019.
//  Copyright © 2019 David Chea. All rights reserved.
//

import UIKit

extension LayoutStackView {
    
    // MARK: - Methods
    
    func addTapGestureRecognizers() {
        firstLayoutImageView.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(firstLayoutTapped)))
        secondLayoutImageView.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(secondLayoutTapped)))
        thirdLayoutImageView.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(thirdLayoutTapped)))
    }
    
    @objc private func firstLayoutTapped() {
        firstLayoutImageView.image = UIImage(named: "Selected Layout 1")
        secondLayoutImageView.image = UIImage(named: "Layout 2")
        thirdLayoutImageView.image = UIImage(named: "Layout 3")
    }
      
    @objc private func secondLayoutTapped() {
        firstLayoutImageView.image = UIImage(named: "Layout 1")
        secondLayoutImageView.image = UIImage(named: "Selected Layout 2")
        thirdLayoutImageView.image = UIImage(named: "Layout 3")
    }
      
    @objc private func thirdLayoutTapped() {
        firstLayoutImageView.image = UIImage(named: "Layout 1")
        secondLayoutImageView.image = UIImage(named: "Layout 2")
        thirdLayoutImageView.image = UIImage(named: "Selected Layout 3")
    }
}
