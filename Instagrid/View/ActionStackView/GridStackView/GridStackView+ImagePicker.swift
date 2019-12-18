//
//  GridStackView+ImagePicker.swift
//  Instagrid
//
//  Created by David Chea on 18/12/2019.
//  Copyright © 2019 David Chea. All rights reserved.
//

import UIKit

extension GridStackView: UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
    // MARK: - Delegate method
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {}
}
