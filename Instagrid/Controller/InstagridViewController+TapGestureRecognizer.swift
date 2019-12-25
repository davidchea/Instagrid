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

    /// Add a tap gesture recognizer to pick an image or select a layout.
    func addTapGestureRecognizers() {
        // Pick an image
        gridStackView.topImageStackView.arrangedSubviews.forEach {
            $0.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(imageTapped(_:))))
        }
        gridStackView.bottomImageStackView.arrangedSubviews.forEach {
            $0.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(imageTapped(_:))))
        }

        // Select a layout
        layoutStackView.arrangedSubviews.forEach {
            $0.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(layoutTapped(_:))))
        }
    }

    /// Trigger the image picker controller when tapping an image in the grid.
    @objc private func imageTapped(_ tapGestureRecognizer: UITapGestureRecognizer) {
        imageTappedTag = tapGestureRecognizer.view!.tag
        present(imagePickerController, animated: true, completion: nil)
    }

    /// Update the grid layout when tapping on a screen bottom layout.
    @objc private func layoutTapped(_ tapGestureRecognizer: UITapGestureRecognizer) {
        let tag = tapGestureRecognizer.view!.tag
        switch tag {
        case 1:
            updateGridLayout("Selected Layout 1", "Layout 2", "Layout 3", isTopHidden: true, isBottomHidden: false)
        case 2:
            updateGridLayout("Layout 1", "Selected Layout 2", "Layout 3", isTopHidden: false, isBottomHidden: true)
        case 3:
            updateGridLayout("Layout 1", "Layout 2", "Selected Layout 3", isTopHidden: false, isBottomHidden: false)
        default:
            break
        }
    }

    /// Hide and move an image.
    private func updateGridLayout(_ firstLayout: String, _ secondLayout: String, _ thirdLayout: String, isTopHidden: Bool, isBottomHidden: Bool) {
        let topRightPlusView = (gridStackView.topImageStackView.arrangedSubviews.last as! PlusView)
        let bottomRightPlusView = (gridStackView.bottomImageStackView.arrangedSubviews.last as! PlusView)

        // Move an image if the layout will hide it
        switch (isTopHidden && topRightPlusView.hasImage, isBottomHidden && bottomRightPlusView.hasImage) {
        case (true, false):
            moveImage(startPlusView: topRightPlusView, endPlusView: bottomRightPlusView)
        case (false, true):
            moveImage(startPlusView: bottomRightPlusView, endPlusView: topRightPlusView)
        default:
            break
        }

        // Update the layout selection (selected or not)
        (layoutStackView.arrangedSubviews[0] as! UIImageView).image = UIImage(named: firstLayout)
        (layoutStackView.arrangedSubviews[1] as! UIImageView).image = UIImage(named: secondLayout)
        (layoutStackView.arrangedSubviews[2] as! UIImageView).image = UIImage(named: thirdLayout)

        // Update the grid layout
        gridStackView.topImageStackView.arrangedSubviews.last!.isHidden = isTopHidden
        gridStackView.bottomImageStackView.arrangedSubviews.last!.isHidden = isBottomHidden
    }

    /// Move an image if it is the first or second grid layout.
    private func moveImage(startPlusView: PlusView, endPlusView: PlusView) {
        endPlusView.plusImageView.image = startPlusView.plusImageView.image
        endPlusView.plusImageView.contentMode = .scaleToFill
        endPlusView.hasImage = true

        startPlusView.plusImageView.image = UIImage(named: "Plus")
        startPlusView.plusImageView.contentMode = .center
        startPlusView.hasImage = false
    }
}
