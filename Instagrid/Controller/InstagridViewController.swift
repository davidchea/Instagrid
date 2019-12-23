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

    let instagridStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .vertical
        stackView.alignment = .center
        stackView.translatesAutoresizingMaskIntoConstraints = false

        return stackView
    }()

    private let actionStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.alignment = .center

        return stackView
    }()

    private let swipeStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .vertical
        stackView.alignment = .center
        stackView.spacing = 5

        return stackView
    }()

    let gridStackView: GridStackView = {
        let gridStackView = GridStackView(frame: CGRect())
        gridStackView.axis = .vertical

        return gridStackView
    }()

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
        addOrientionConstrains()
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
        view.addSubview(instagridStackView)

        [instagridImageView, actionStackView].forEach { instagridStackView.addArrangedSubview($0) }
        [UIView(), swipeStackView, gridStackView, layoutStackView, UIView()].forEach { actionStackView.addArrangedSubview($0) }
        [swipeImageView, swipeLabel].forEach { swipeStackView.addArrangedSubview($0) }
    }

    /// Fill the safe area with the main stack view and activate all the views main constraints.
    private func activateMainConstraints() {
        instagridStackView.fillLayoutGuide(view.safeAreaLayoutGuide)

        let baseUnit = gridStackView.widthAnchor
        NSLayoutConstraint.activate([
            actionStackView.leadingAnchor.constraint(equalTo: instagridStackView.leadingAnchor),
            actionStackView.trailingAnchor.constraint(equalTo: instagridStackView.trailingAnchor),
            actionStackView.arrangedSubviews.first!.widthAnchor.constraint(equalTo: actionStackView.arrangedSubviews.last!.widthAnchor),
            actionStackView.arrangedSubviews.first!.heightAnchor.constraint(equalTo: actionStackView.arrangedSubviews.last!.heightAnchor),
            gridStackView.heightAnchor.constraint(equalTo: baseUnit),
            instagridImageView.widthAnchor.constraint(equalTo: baseUnit, multiplier: 0.4),
            instagridImageView.heightAnchor.constraint(equalTo: baseUnit, multiplier: 0.2),
            swipeImageView.widthAnchor.constraint(equalTo: baseUnit, multiplier: 0.04),
            swipeImageView.heightAnchor.constraint(equalTo: baseUnit, multiplier: 0.04)
        ])

        layoutStackView.arrangedSubviews.forEach {
            NSLayoutConstraint.activate([
                $0.widthAnchor.constraint(equalTo: baseUnit, multiplier: 0.2),
                $0.heightAnchor.constraint(equalTo: baseUnit, multiplier: 0.2)
            ])
        }
    }

    /// Fill the portrait and landscape constraints collections.
    private func addOrientionConstrains() {
        portraitConstraints.append(gridStackView.widthAnchor.constraint(equalTo: instagridStackView.widthAnchor, multiplier: 0.8))

        landscapeConstraints.append(actionStackView.arrangedSubviews.first!.widthAnchor.constraint(equalToConstant: 0))
        landscapeConstraints.append(gridStackView.widthAnchor.constraint(equalTo: instagridStackView.heightAnchor, multiplier: 0.8))
        landscapeConstraints.append(gridStackView.centerXAnchor.constraint(equalTo: instagridStackView.centerXAnchor))
    }

    /// Update the layout according to the device orientation.
    private func setOrientationMode(_ orientation: Orientation) {
        switch orientation {
        case .portrait:
            addSwipeGestureRecognizer(.up)

            swipeImageView.image = UIImage(named: "Arrow Up")
            swipeLabel.text = "Swipe up to share"

            actionStackView.axis = .vertical
            actionStackView.spacing = 35
            layoutStackView.axis = .horizontal
            NSLayoutConstraint.deactivate(landscapeConstraints)
            NSLayoutConstraint.activate(portraitConstraints)
        case .landscape:
            addSwipeGestureRecognizer(.left)

            swipeImageView.image = UIImage(named: "Arrow Left")
            swipeLabel.text = "Swipe left to share"

            actionStackView.axis = .horizontal
            actionStackView.spacing = 10
            layoutStackView.axis = .vertical
            NSLayoutConstraint.deactivate(portraitConstraints)
            NSLayoutConstraint.activate(landscapeConstraints)
        }
    }
}
