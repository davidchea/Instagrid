//
//  InstagridViewController.swift
//  Instagrid
//
//  Created by David Chea on 10/12/2019.
//  Copyright © 2019 David Chea. All rights reserved.
//

import UIKit

enum ImagePosition: Int { case none, topLeft, topRight, bottomLeft, bottomRight }

class InstagridViewController: UIViewController {

    private enum Orientation { case portrait, landscape }

    // MARK: - Properties

    /// The stack view containing all the views except the logo.
    private let instagridStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.alignment = .center

        return stackView
    }()

    /// The stack view containing the swipe image view and the label.
    private let swipeStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .vertical
        stackView.alignment = .center
        stackView.spacing = 5

        return stackView
    }()

    /// The stack view representing the grid of image views.
    let gridStackView: GridStackView = {
        let gridStackView = GridStackView(frame: CGRect())
        gridStackView.axis = .vertical

        return gridStackView
    }()

    /// The stack view containing the layouts.
    let layoutStackView: UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [
            UIImageView(image: UIImage(named: "Layout 1")),
            UIImageView(image: UIImage(named: "Selected Layout 2")),
            UIImageView(image: UIImage(named: "Layout 2"))
        ])
        stackView.alignment = .center
        stackView.spacing = 40

        for tag in 1...3 {
            stackView.arrangedSubviews[tag - 1].tag = tag
            stackView.arrangedSubviews[tag - 1].isUserInteractionEnabled = true
        }

        return stackView
    }()

    @ScaleAspectFit(UIImageView(image: UIImage(named: "Instagrid")))
    private var instagridImageView

    @ScaleAspectFit(UIImageView(image: UIImage()))
    private var swipeImageView

    private let swipeLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont(name: "Delm-Medium", size: 21)
        label.textColor = .white
        label.lineBreakMode = NSLineBreakMode.byClipping

        return label
    }()

    private var portraitConstraints = [NSLayoutConstraint]()
    private var landscapeConstraints = [NSLayoutConstraint]()

    let imagePickerController = UIImagePickerController()
    var imageTappedTag = ImagePosition.none.rawValue

    // MARK: - Life cycle

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .backgroundBlue

        imagePickerController.delegate = self
        addTapGestureRecognizers()

        buildView()
        activateMainConstraints()
        addOrientionConstraints()
    }

    override func viewDidLayoutSubviews() {
        if UIDevice.current.orientation.isLandscape {
            setOrientationMode(.landscape)
        } else {
            setOrientationMode(.portrait)
        }
    }

    // MARK: - Methods

    /// Add the main stack view to the view and add each view to his respective stack view.
    private func buildView() {
        instagridImageView.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(instagridImageView)
        view.addSubview(instagridStackView)
        
        [UIView(), swipeStackView, gridStackView, layoutStackView, UIView()].forEach { instagridStackView.addArrangedSubview($0) }
        [swipeImageView, swipeLabel].forEach { swipeStackView.addArrangedSubview($0) }
    }

    /// Fill the safe area with the main stack view and activate all the views main constraints.
    private func activateMainConstraints() {
        let baseUnit = gridStackView.widthAnchor
        NSLayoutConstraint.activate([
            instagridImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            instagridImageView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            instagridStackView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            instagridStackView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -20),
            instagridStackView.arrangedSubviews.first!.widthAnchor.constraint(equalTo: instagridStackView.arrangedSubviews.last!.widthAnchor),
            instagridStackView.arrangedSubviews.first!.heightAnchor.constraint(equalTo: instagridStackView.arrangedSubviews.last!.heightAnchor),
            gridStackView.heightAnchor.constraint(equalTo: baseUnit),
            instagridImageView.widthAnchor.constraint(equalTo: baseUnit, multiplier: 0.4),
            instagridImageView.heightAnchor.constraint(equalTo: baseUnit, multiplier: 0.2),
            swipeImageView.widthAnchor.constraint(equalTo: baseUnit, multiplier: 0.04),
            swipeImageView.heightAnchor.constraint(equalTo: baseUnit, multiplier: 0.04)
        ])

        // Set the size for each layout image
        layoutStackView.arrangedSubviews.forEach {
            NSLayoutConstraint.activate([
                $0.widthAnchor.constraint(equalTo: baseUnit, multiplier: 0.2),
                $0.heightAnchor.constraint(equalTo: baseUnit, multiplier: 0.2)
            ])
        }
    }

    /// Fill the portrait and landscape constraints collections.
    private func addOrientionConstraints() {
        portraitConstraints.append(gridStackView.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.8))
        
        landscapeConstraints.append(instagridStackView.arrangedSubviews.first!.widthAnchor.constraint(equalToConstant: 0))
        landscapeConstraints.append(gridStackView.widthAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.75))
        landscapeConstraints.append(gridStackView.centerXAnchor.constraint(equalTo: view.centerXAnchor))
    }

    /// Update the layout according to the device orientation.
    private func setOrientationMode(_ orientation: Orientation) {
        switch orientation {
        case .portrait:
            addSwipeGestureRecognizer(.up)

            swipeImageView.image = UIImage(named: "Arrow Up")
            swipeLabel.text = "Swipe up to share"

            instagridStackView.axis = .vertical
            instagridStackView.spacing = 40
            layoutStackView.axis = .horizontal
            NSLayoutConstraint.deactivate(landscapeConstraints)
            NSLayoutConstraint.activate(portraitConstraints)
        case .landscape:
            addSwipeGestureRecognizer(.left)

            swipeImageView.image = UIImage(named: "Arrow Left")
            swipeLabel.text = "Swipe left to share"

            instagridStackView.axis = .horizontal
            instagridStackView.spacing = 15
            layoutStackView.axis = .vertical
            NSLayoutConstraint.deactivate(portraitConstraints)
            NSLayoutConstraint.activate(landscapeConstraints)
        }
    }
}
