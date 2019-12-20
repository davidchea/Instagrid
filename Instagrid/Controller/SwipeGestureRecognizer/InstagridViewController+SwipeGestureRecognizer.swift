////
////  InstagridViewController+SwipeGestureRecognizer.swift
////  Instagrid
////
////  Created by David Chea on 19/12/2019.
////  Copyright © 2019 David Chea. All rights reserved.
////
//
//import UIKit
//
//extension InstagridViewController {
//    
//    // MARK: - Methods
//    
//    func addSwipeGestureRecognizer(_ direction: UISwipeGestureRecognizer.Direction) {
//        let swipeGestureRecognizer = UISwipeGestureRecognizer(target: self, action: #selector(gridSwiped(_:)))
//        swipeGestureRecognizer.direction = direction
//        
//        instagridStackView.gestureRecognizers?.removeAll()
//        instagridStackView.addGestureRecognizer(swipeGestureRecognizer)
//    }
//    
//    @objc private func gridSwiped(_ swipeGestureRecognizer: UISwipeGestureRecognizer) {
//        let direction = swipeGestureRecognizer.direction
//        let gridStackView = instagridStackView.actionStackView.gridStackView
//        let maxX = view.bounds.maxX
//        let maxY = view.bounds.maxY
//        
//        switch direction {
//        case .up:
//            UIView.animate(withDuration: 0.5) { gridStackView.center.y -= maxY }
//        case .left:
//            UIView.animate(withDuration: 0.5) { gridStackView.center.x -= maxX }
//        default:
//            break
//        }
//        
//        let image = instagridStackView.actionStackView.gridStackView.asImage()
//        let activityViewController = UIActivityViewController(activityItems: [image], applicationActivities: nil)
//        activityViewController.completionWithItemsHandler = { (activityType, completed, returnedItems, activityError) in
//            switch direction {
//            case .up:
//                UIView.animate(withDuration: 0.5) { gridStackView.center.y += maxY }
//            case .left:
//                UIView.animate(withDuration: 0.5) { gridStackView.center.x += maxX }
//            default:
//                break
//            }
//        }
//        
//        present(activityViewController, animated: true, completion: nil)
//    }
//}
