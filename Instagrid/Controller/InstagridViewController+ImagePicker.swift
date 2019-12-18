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
        
        switch imageTappedIdentifier {
        case "TopLeft":
            gridStackView.topImageStackView.leftPlusView.plusImageView.image = image
        case "TopRight":
            gridStackView.topImageStackView.rightPlusView.plusImageView.image = image
        case "BottomLeft":
            gridStackView.bottomImageStackView.leftPlusView.plusImageView.image = image
        case "BottomRight":
            gridStackView.bottomImageStackView.rightPlusView.plusImageView.image = image
        default:
            break
        }
        
        dismiss(animated: true, completion: nil)
    }
}
