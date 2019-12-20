////
////  ActionStackView+TapGestureRecognizer.swift
////  Instagrid
////
////  Created by David Chea on 18/12/2019.
////  Copyright © 2019 David Chea. All rights reserved.
////
//
//import UIKit
//
//extension ActionStackView: TapGestureRecognizer {
//    
//    // MARK: - Protocol method
//    
//    func addTapGestureRecognizers() {
//        layoutStackView.firstLayoutImageView.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(layoutTapped(_:))))
//        layoutStackView.secondLayoutImageView.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(layoutTapped(_:))))
//        layoutStackView.thirdLayoutImageView.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(layoutTapped(_:))))
//    }
//    
//    // MARK: - Methods
//    
//    @objc private func layoutTapped(_ tapGestureRecognizer: UITapGestureRecognizer) {
//        let id = tapGestureRecognizer.view!.accessibilityIdentifier
//        switch id {
//        case "Layout 1":
//            configureLayout("Selected Layout 1", "Layout 2", "Layout 3", isTopHidden: true, isBottomHidden: false)
//        case "Layout 2":
//            configureLayout("Layout 1", "Selected Layout 2", "Layout 3", isTopHidden: false, isBottomHidden: true)
//        case "Layout 3":
//            configureLayout("Layout 1", "Layout 2", "Selected Layout 3", isTopHidden: false, isBottomHidden: false)
//        default:
//            break
//        }
//    }
//    
//    private func configureLayout(_ firstLayout: String, _ secondLayout: String, _ thirdLayout: String, isTopHidden: Bool, isBottomHidden: Bool) {
//        layoutStackView.firstLayoutImageView.image = UIImage(named: firstLayout)
//        layoutStackView.secondLayoutImageView.image = UIImage(named: secondLayout)
//        layoutStackView.thirdLayoutImageView.image = UIImage(named: thirdLayout)
//        
//        gridStackView.topImageStackView.rightPlusView.isHidden = isTopHidden
//        gridStackView.bottomImageStackView.rightPlusView.isHidden = isBottomHidden
//    }
//}
