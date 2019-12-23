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

    /// Add a swipe gesture recognizer to send an image via the activity view controller.
    func addSwipeGestureRecognizer(_ direction: UISwipeGestureRecognizer.Direction) {
        let swipeGestureRecognizer = UISwipeGestureRecognizer(target: self, action: #selector(gridSwiped(_:)))
        swipeGestureRecognizer.direction = direction

        instagridStackView.gestureRecognizers?.removeAll()
        instagridStackView.addGestureRecognizer(swipeGestureRecognizer)
    }

    /// Swipe the grid and present the activity view controller.
    @objc private func gridSwiped(_ swipeGestureRecognizer: UISwipeGestureRecognizer) {
        let direction = swipeGestureRecognizer.direction
        let maxX = view.bounds.maxX
        let maxY = view.bounds.maxY

        let image = gridStackView.asImage()
        let activityViewController = UIActivityViewController(activityItems: [image], applicationActivities: nil)

        switch direction {
        case .up:
            UIView.animate(withDuration: 0.5) { self.gridStackView.center.y -= maxY }
            activityViewController.completionWithItemsHandler = { (_, _, _, _) in
                UIView.animate(withDuration: 0.5) { self.gridStackView.center.y += maxY }
            }
        case .left:
            UIView.animate(withDuration: 0.5) { self.gridStackView.center.x -= maxX }
            activityViewController.completionWithItemsHandler = { (_, _, _, _) in
                UIView.animate(withDuration: 0.5) { self.gridStackView.center.x += maxX }
            }
        default:
            break
        }

        present(activityViewController, animated: true, completion: nil)
    }
}
