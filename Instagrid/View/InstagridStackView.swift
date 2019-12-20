////
////  InstagridStackView.swift
////  Instagrid
////
////  Created by David Chea on 16/12/2019.
////  Copyright © 2019 David Chea. All rights reserved.
////
//
//import UIKit
//
//class InstagridStackView: UIStackView, StackView {
//    
//    // MARK: - Properties
//    
//    @AutoLayout(UIImageView(image: UIImage(named: "Instagrid")))
//    var instagridImageView
//    
//    @AutoLayout(ActionStackView(frame: CGRect()))
//    var actionStackView
//    
//    // MARK: - Initializers
//    
//    override init(frame: CGRect) {
//        super.init(frame: frame)
//        
//        configureStackView()
//        [instagridImageView, actionStackView].forEach { addArrangedSubview($0) }
//        
//        instagridImageView.contentMode = .scaleAspectFit
//    }
//    
//    required init(coder: NSCoder) {
//        super.init(coder: coder)
//    }
//    
//    // MARK: - Protocol method
//    
//    func configureStackView() {
//        axis = .vertical
//        alignment = .center
//    }
//}
