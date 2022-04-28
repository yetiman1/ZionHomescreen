//
//  LeftStackView.swift
//  Zions_Home_Screen
//
//  Created by Joshua Bunting on 4/21/22.
//

import Foundation
import UIKit

class SquareView: UIView {
  
    private lazy var backgroundImage: UIImageView = {
        var backgroundImage = UIImageView()
        backgroundImage.clipsToBounds = true
        backgroundImage.translatesAutoresizingMaskIntoConstraints = false
        return backgroundImage
    }()
    
    private lazy var label: UILabel = {
        let label = UILabel()
        label.textColor = UIColor.white
        label.font = UIFont.preferredFont(forTextStyle: .largeTitle)
        label.font = UIFont.boldSystemFont(ofSize: 20)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setUpViews()
        addConstraints()
    }
    
    required init(coder: NSCoder) {
        super.init(coder: coder)!
        setUpViews()
        addConstraints()
    }
    
    // MARK: private methods
    
    private func addConstraints() {
        let margins = layoutMarginsGuide
        
        var constraints = [NSLayoutConstraint]()
        
        constraints.append(backgroundImage.topAnchor.constraint(equalTo: margins.topAnchor,constant: -8))
        constraints.append(backgroundImage.bottomAnchor.constraint(equalTo: margins.bottomAnchor,constant: 8))
        constraints.append(backgroundImage.leadingAnchor.constraint(equalTo: margins.leadingAnchor,constant: -8))
        constraints.append(backgroundImage.trailingAnchor.constraint(equalTo: margins.trailingAnchor,constant: 8))
        
        constraints.append(label.leadingAnchor.constraint(equalTo: backgroundImage.leadingAnchor,constant: 1))
        constraints.append(label.trailingAnchor.constraint(equalTo: backgroundImage.trailingAnchor,constant: 5))
        constraints.append(label.bottomAnchor.constraint(equalTo: backgroundImage.bottomAnchor,constant: 0))
//        constraints.append(label.topAnchor.constraint(equalTo: backgroundImage.topAnchor,constant: 10))
        
        NSLayoutConstraint.activate(constraints)
    }
    
    private func setUpViews() {
        self.addSubview(backgroundImage)
        self.addSubview(label)
    }
    
    // MARK: public methods
    
    func setImage(newImage: String) {
        backgroundImage.image = UIImage(named: newImage)
    }
    
    func setLabel(newLabel: String) {
        label.text = newLabel
    }
    
}
