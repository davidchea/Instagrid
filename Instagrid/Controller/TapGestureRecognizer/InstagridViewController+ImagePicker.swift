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
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        let image = info[UIImagePickerController.InfoKey.originalImage] as! UIImage
        let gridStackView = instagridStackView.actionStackView.gridStackView
        
        var plusImageView = UIImageView()
        switch imageTappedIdentifier {
        case "TopLeft":
            plusImageView = gridStackView.topImageStackView.leftPlusView.plusImageView
        case "TopRight":
            plusImageView = gridStackView.topImageStackView.rightPlusView.plusImageView
        case "BottomLeft":
            plusImageView = gridStackView.bottomImageStackView.leftPlusView.plusImageView
        case "BottomRight":
            plusImageView = gridStackView.bottomImageStackView.rightPlusView.plusImageView
        default:
            plusImageView = UIImageView()
        }
        
        plusImageView.image = image
        plusImageView.contentMode = .scaleToFill
        
        dismiss(animated: true, completion: nil)
    }
}
