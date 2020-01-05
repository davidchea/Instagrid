//
//  PlusView.swift
//  Instagrid
//
//  Created by David Chea on 18/12/2019.
//  Copyright © 2019 David Chea. All rights reserved.
//

import UIKit

class PlusView: UIView {

    // MARK: - Properties

    /// The image view containing the image selected by the user.
    let plusImageView: UIImageView = {
        let imageView = UIImageView(image: UIImage(named: "Plus"))
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .center

        return imageView
    }()

    /// Check if the user has selected an image.
    var hasImage = false

    // MARK: - Initializers

    override init(frame: CGRect) {
        super.init(frame: frame)

        backgroundColor = .white

        addSubview(plusImageView)
        plusImageView.fillSuperview()
    }

    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
}
