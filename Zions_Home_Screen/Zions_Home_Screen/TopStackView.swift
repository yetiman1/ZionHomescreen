//
//  LeftStackView.swift
//  Zions_Home_Screen
//
//  Created by Joshua Bunting on 4/21/22.
//

import Foundation
import UIKit

class TopStackView: UIView {
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    private lazy var backgroundImage:
    UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
    
    private var label: UILabel {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }
    func setup() {
        self.layer.cornerRadius = 20
        self.layer.borderWidth = 3.0
        self.layer.borderColor = UIColor.white.cgColor
        self.clipsToBounds = true
    }
    private func addConstraints() {
        let margins = layoutMarginsGuide
        var constraints = [NSLayoutConstraint]()
        constraints.append(backgroundImage.topAnchor.constraint(equalTo: margins.topAnchor,constant: <#T##CGFloat#>))
    }
}
