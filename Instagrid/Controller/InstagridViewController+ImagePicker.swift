//
//  InstagridViewController+ImagePicker.swift
//  Instagrid
//
//  Created by David Chea on 18/12/2019.
//  Copyright © 2019 David Chea. All rights reserved.
//

import UIKit

extension InstagridViewController: UIImagePickerControllerDelegate, UINavigationControllerDelegate {

    // MARK: - Delegate method

    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey: Any]) {
        let image = info[UIImagePickerController.InfoKey.originalImage] as! UIImage

        // Set the image in the selected location
        let plusView: PlusView
        switch imageTappedTag {
        case 1:
            plusView = (gridStackView.topImageStackView.arrangedSubviews.first as! PlusView)
        case 2:
            plusView = (gridStackView.topImageStackView.arrangedSubviews.last as! PlusView)
            plusView.hasImage = true
        case 3:
            plusView = (gridStackView.bottomImageStackView.arrangedSubviews.first as! PlusView)
        case 4:
            plusView = (gridStackView.bottomImageStackView.arrangedSubviews.last as! PlusView)
            plusView.hasImage = true
        default:
            plusView = PlusView()
        }

        plusView.plusImageView.image = image
        plusView.plusImageView.contentMode = .scaleToFill

        dismiss(animated: true, completion: nil)
    }
}
