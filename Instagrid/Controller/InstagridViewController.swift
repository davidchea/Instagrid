//
//  InstagridViewController.swift
//  Instagrid
//
//  Created by David Chea on 10/12/2019.
//  Copyright © 2019 David Chea. All rights reserved.
//

import UIKit

class InstagridViewController: UIViewController {
    
    private enum Orientation { case portrait, landscape }
    
    // MARK: - Properties
    
    @AutoLayout
    private var instagridStackView = UIStackView()
    
    private let actionStackView = UIStackView()
    
    private let swipeStackView = UIStackView()
    
    private var gridStackView = UIStackView(arrangedSubviews: [
        UIStackView(arrangedSubviews: [PlusView(frame: CGRect()), PlusView(frame: CGRect())]),
        UIStackView(arrangedSubviews: [PlusView(frame: CGRect()), PlusView(frame: CGRect())])
    ])
    
    private let layoutStackView = UIStackView(arrangedSubviews: [
        UIImageView(image: UIImage(named: "Layout 1")),
        UIImageView(image: UIImage(named: "Selected Layout 2")),
        UIImageView(image: UIImage(named: "Layout 2"))
    ])
    
    private let instagridImageView: UIImageView = {
        let imageView = UIImageView(image: UIImage(named: "Instagrid"))
        imageView.contentMode = .scaleAspectFit
        
        return imageView
    }()
    
    private let swipeImageView = UIImageView()
    
    private let swipeLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont(name: "Delm-Medium", size: 26)
        label.textColor = .white
        
        return label
    }()
    
    private let imagePickerController = UIImagePickerController()
    
    // MARK: - Life cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .backgroundBlue
        buildView()
        activateConstraints()
    }
    
    override func viewDidLayoutSubviews() {
        if UIDevice.current.orientation.isPortrait {
            setOrientationMode(.portrait)
        } else {
            setOrientationMode(.landscape)
        }
    }
    
    // MARK: - Methods
    
    private func buildView() {
        view.addSubview(instagridStackView)
        
        [instagridImageView, actionStackView].forEach { instagridStackView.addArrangedSubview($0) }
        [swipeStackView, gridStackView, layoutStackView].forEach { actionStackView.addArrangedSubview($0) }
        [swipeImageView, swipeLabel].forEach { swipeStackView.addArrangedSubview($0) }
    }
    
    private func activateConstraints() {
        [instagridStackView, swipeStackView, gridStackView].forEach { $0.axis = .vertical }
        
        instagridStackView.fillLayoutGuide(view.safeAreaLayoutGuide)
        
        NSLayoutConstraint.activate([
            instagridImageView.widthAnchor.constraint(greaterThanOrEqualToConstant: 100),
            swipeImageView.widthAnchor.constraint(greaterThanOrEqualToConstant: 50)
        ])
    }
    
    private func setOrientationMode(_ orientation: Orientation) {
        switch orientation {
        case .portrait:
            actionStackView.axis = .vertical
            layoutStackView.axis = .horizontal
            swipeImageView.image = UIImage(named: "Arrow Up")
            swipeLabel.text = "Swipe up to share"
        case .landscape:
            actionStackView.axis = .horizontal
            layoutStackView.axis = .vertical
            swipeImageView.image = UIImage(named: "Arrow Left")
            swipeLabel.text = "Swipe left to share"
        }
    }
}
