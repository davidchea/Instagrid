////
////  GridStackView.swift
////  Instagrid
////
////  Created by David Chea on 11/12/2019.
////  Copyright © 2019 David Chea. All rights reserved.
////
//
//import UIKit
//
//class GridStackView: UIStackView, StackView, Identifier {
//    
//    // MARK: - Properties
//    
//    private let backgroundView: UIView = {
//        let view = UIView()
//        view.backgroundColor = .layoutBlue
//        view.translatesAutoresizingMaskIntoConstraints = false
//        
//        return view
//    }()
//    
//    @AutoLayout(ImageStackView(frame: CGRect()))
//    var topImageStackView
//    
//    @AutoLayout(ImageStackView(frame: CGRect()))
//    var bottomImageStackView
//    
//    // MARK: - Initializers
//
//    override init(frame: CGRect) {
//        super.init(frame: frame)
//        
//        configureStackView()
//        
//        addSubview(backgroundView)
//        backgroundView.fillSuperview()
//        [topImageStackView, bottomImageStackView].forEach { addArrangedSubview($0) }
//        
//        setIdentifiers()
//        bottomImageStackView.rightPlusView.isHidden = true
//    }
//    
//    required init(coder: NSCoder) {
//        super.init(coder: coder)
//    }
//    
//    // MARK: - Protocol methods
//    
//    func configureStackView() {
//        axis = .vertical
//        distribution = .fillEqually
//        spacing = .gridSpacing
//        
//        isLayoutMarginsRelativeArrangement = true
//        layoutMargins = UIEdgeInsets(top: .gridSpacing, left: .gridSpacing, bottom: .gridSpacing, right: .gridSpacing)
//    }
//    
//    func setIdentifiers() {
//        topImageStackView.leftPlusView.accessibilityIdentifier = "TopLeft"
//        topImageStackView.rightPlusView.accessibilityIdentifier = "TopRight"
//        bottomImageStackView.leftPlusView.accessibilityIdentifier = "BottomLeft"
//        bottomImageStackView.rightPlusView.accessibilityIdentifier = "BottomRight"
//    }
//    
//    // MARK: - Method
//    
//    func asImage() -> UIImage {
//        let graphicsImageRenderer = UIGraphicsImageRenderer(bounds: bounds)
//        let image = graphicsImageRenderer.image { graphicsImageRendererContext in
//            layer.render(in: graphicsImageRendererContext.cgContext)
//        }
//        
//        return image
//    }
//}
