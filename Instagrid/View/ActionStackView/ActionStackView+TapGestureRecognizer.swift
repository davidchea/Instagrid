//
//  ActionStackView+TapGestureRecognizer.swift
//  Instagrid
//
//  Created by David Chea on 18/12/2019.
//  Copyright © 2019 David Chea. All rights reserved.
//

import UIKit

extension ActionStackView {
    
    // MARK: - Methods
    
    func addTapGestureRecognizers() {
        layoutStackView.firstLayoutImageView.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(firstLayoutTapped)))
        layoutStackView.secondLayoutImageView.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(secondLayoutTapped)))
        layoutStackView.thirdLayoutImageView.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(thirdLayoutTapped)))
    }
    
    @objc private func firstLayoutTapped() {
        layoutStackView.firstLayoutImageView.image = UIImage(named: "Selected Layout 1")
        layoutStackView.secondLayoutImageView.image = UIImage(named: "Layout 2")
        layoutStackView.thirdLayoutImageView.image = UIImage(named: "Layout 3")
        
        hideImageView(top: true, bottom: false)
    }
      
    @objc private func secondLayoutTapped() {
        layoutStackView.firstLayoutImageView.image = UIImage(named: "Layout 1")
        layoutStackView.secondLayoutImageView.image = UIImage(named: "Selected Layout 2")
        layoutStackView.thirdLayoutImageView.image = UIImage(named: "Layout 3")
        
        hideImageView(top: false, bottom: true)
    }
      
    @objc private func thirdLayoutTapped() {
        layoutStackView.firstLayoutImageView.image = UIImage(named: "Layout 1")
        layoutStackView.secondLayoutImageView.image = UIImage(named: "Layout 2")
        layoutStackView.thirdLayoutImageView.image = UIImage(named: "Selected Layout 3")
        
        hideImageView(top: false, bottom: false)
    }
    
    private func hideImageView(top: Bool, bottom: Bool) {
        gridStackView.topImageStackView.rightPlusView.isHidden = top
        gridStackView.bottomImageStackView.rightPlusView.isHidden = bottom
    }
}
