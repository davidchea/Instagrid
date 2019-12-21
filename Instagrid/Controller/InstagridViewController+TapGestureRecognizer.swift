//
//  InstagridViewController+TapGestureRecognizer.swift
//  Instagrid
//
//  Created by David Chea on 18/12/2019.
//  Copyright © 2019 David Chea. All rights reserved.
//

import UIKit

extension InstagridViewController {
    
    // MARK: - Methods
    
    func addTapGestureRecognizers() {
        gridStackView.topImageStackView.arrangedSubviews.forEach {
            $0.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(imageTapped(_:))))
        }
        gridStackView.bottomImageStackView.arrangedSubviews.forEach {
            $0.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(imageTapped(_:))))
        }
        
        layoutStackView.arrangedSubviews.forEach {
            $0.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(layoutTapped(_:))))
        }
    }
    
    @objc private func imageTapped(_ tapGestureRecognizer: UITapGestureRecognizer) {
        imageTappedTag = tapGestureRecognizer.view!.tag
        present(imagePickerController, animated: true, completion: nil)
    }
    
    @objc private func layoutTapped(_ tapGestureRecognizer: UITapGestureRecognizer) {
        let tag = tapGestureRecognizer.view!.tag
        switch tag {
        case 1:
            configureLayout("Selected Layout 1", "Layout 2", "Layout 3", isTopHidden: true, isBottomHidden: false)
        case 2:
            configureLayout("Layout 1", "Selected Layout 2", "Layout 3", isTopHidden: false, isBottomHidden: true)
        case 3:
            configureLayout("Layout 1", "Layout 2", "Selected Layout 3", isTopHidden: false, isBottomHidden: false)
        default:
            break
        }
    }
    
    private func configureLayout(_ firstLayout: String, _ secondLayout: String, _ thirdLayout: String, isTopHidden: Bool, isBottomHidden: Bool) {
        let topRightPlusView = (gridStackView.topImageStackView.arrangedSubviews.last as! PlusView)
        let bottomRightPlusView = (gridStackView.bottomImageStackView.arrangedSubviews.last as! PlusView)
        
        switch (isTopHidden && topRightPlusView.hasImage, isBottomHidden && bottomRightPlusView.hasImage) {
        case (true, false):
            moveImage(startPlusView: topRightPlusView, endPlusView: bottomRightPlusView)
        case (false, true):
            moveImage(startPlusView: bottomRightPlusView, endPlusView: topRightPlusView)
        default:
            break
        }
        
        (layoutStackView.arrangedSubviews[0] as! UIImageView).image = UIImage(named: firstLayout)
        (layoutStackView.arrangedSubviews[1] as! UIImageView).image = UIImage(named: secondLayout)
        (layoutStackView.arrangedSubviews[2] as! UIImageView).image = UIImage(named: thirdLayout)
        
        gridStackView.topImageStackView.arrangedSubviews.last!.isHidden = isTopHidden
        gridStackView.bottomImageStackView.arrangedSubviews.last!.isHidden = isBottomHidden
    }
    
    private func moveImage(startPlusView: PlusView, endPlusView: PlusView) {
        endPlusView.plusImageView.image = startPlusView.plusImageView.image
        endPlusView.plusImageView.contentMode = .scaleToFill
        endPlusView.hasImage = true
        
        startPlusView.plusImageView.image = UIImage(named: "Plus")
        startPlusView.plusImageView.contentMode = .center
        startPlusView.hasImage = false
    }
}
