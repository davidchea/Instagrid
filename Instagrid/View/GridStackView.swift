//
//  GridStackView.swift
//  Instagrid
//
//  Created by David Chea on 11/12/2019.
//  Copyright © 2019 David Chea. All rights reserved.
//

import UIKit

class GridStackView: UIStackView {

    // MARK: - Properties

    /// An empty view for the grid stack view background color.
    private let backgroundView: UIView = {
        let view = UIView()
        view.backgroundColor = .layoutBlue
        view.translatesAutoresizingMaskIntoConstraints = false

        return view
    }()

    /// The stack view containing top left and top right images.
    let topImageStackView = UIStackView(arrangedSubviews: [PlusView(frame: CGRect()), PlusView(frame: CGRect())])
    
    /// The stack view containing bottom left and bottom right images.
    let bottomImageStackView = UIStackView(arrangedSubviews: [PlusView(frame: CGRect()), PlusView(frame: CGRect())])

    /// The grid stack view spacing and margin.
    private let gridSpacing = CGFloat(10)

    // MARK: - Initializers

    override init(frame: CGRect) {
        super.init(frame: frame)

        configureStackView()
        setTags()

        addSubview(backgroundView)
        backgroundView.fillSuperview()

        [topImageStackView, bottomImageStackView].forEach {
            addArrangedSubview($0)
            $0.distribution = .fillEqually
            $0.spacing = gridSpacing
        }

        bottomImageStackView.arrangedSubviews.last!.isHidden = true
    }

    required init(coder: NSCoder) {
        super.init(coder: coder)
    }

    // MARK: - Methods

    /// Set the stack view properties.
    private func configureStackView() {
        axis = .vertical
        distribution = .fillEqually
        spacing = gridSpacing

        isLayoutMarginsRelativeArrangement = true
        layoutMargins = UIEdgeInsets(top: gridSpacing, left: gridSpacing, bottom: gridSpacing, right: gridSpacing)
    }

    /// Set a tag for each image.
    private func setTags() {
        topImageStackView.arrangedSubviews.first!.tag = ImagePosition.topLeft.rawValue
        topImageStackView.arrangedSubviews.last!.tag = ImagePosition.topRight.rawValue
        bottomImageStackView.arrangedSubviews.first!.tag = ImagePosition.bottomLeft.rawValue
        bottomImageStackView.arrangedSubviews.last!.tag = ImagePosition.bottomRight.rawValue
    }

    /// Transform the view as an image.
    func asImage() -> UIImage {
        let graphicsImageRenderer = UIGraphicsImageRenderer(bounds: bounds)
        let image = graphicsImageRenderer.image { graphicsImageRendererContext in
            layer.render(in: graphicsImageRendererContext.cgContext)
        }

        return image
    }
}
