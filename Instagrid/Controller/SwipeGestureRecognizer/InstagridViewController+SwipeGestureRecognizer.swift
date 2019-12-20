//
//  InstagridViewController+SwipeGestureRecognizer.swift
//  Instagrid
//
//  Created by David Chea on 19/12/2019.
//  Copyright © 2019 David Chea. All rights reserved.
//

import UIKit

extension InstagridViewController {
    
    // MARK: - Methods
    
    func addSwipeGestureRecognizer(_ direction: UISwipeGestureRecognizer.Direction) {
        let swipeGestureRecognizer = UISwipeGestureRecognizer(target: self, action: #selector(gridSwiped(_:)))
        swipeGestureRecognizer.direction = direction
        
        instagridStackView.gestureRecognizers?.removeAll()
        instagridStackView.addGestureRecognizer(swipeGestureRecognizer)
    }
    
    @objc private func gridSwiped(_ swipeGestureRecognizer: UISwipeGestureRecognizer) {
        let image = instagridStackView.actionStackView.gridStackView.asImage()
        let activityViewController = UIActivityViewController(activityItems: [image], applicationActivities: nil)
        present(activityViewController, animated: true, completion: nil)
    }
}
