//
//  LayoutStackView.swift
//  Instagrid
//
//  Created by David Chea on 13/12/2019.
//  Copyright © 2019 David Chea. All rights reserved.
//

import UIKit

class LayoutStackView: UIStackView {
    
    // MARK: - Properties
    
    @AutoLayout(view: UIImageView(image: UIImage(named: "Layout 1")))
    var firstLayoutImageView
    
    @AutoLayout(view: UIImageView(image: UIImage(named: "Selected Layout 2")))
    var secondLayoutImageView
    
    @AutoLayout(view: UIImageView(image: UIImage(named: "Layout 3")))
    var thirdLayoutImageView
    
    // MARK: - Initializers
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        spacing = 30
        [firstLayoutImageView, secondLayoutImageView, thirdLayoutImageView].forEach { addArrangedSubview($0) }
        
        addGestureRecognizer()
    }
    
    required init(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    // MARK: - Methods
    
    private func addGestureRecognizer() {
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
