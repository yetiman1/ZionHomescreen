//
//  LongRectangle.swift
//  Zions_Home_Screen
//
//  Created by Joshua Bunting on 4/21/22.
//

import Foundation
import UIKit

class LongRectangle: UIView {
    
    override func awakeFromNib() {
        super.awakeFromNib()
        setup()
    }
    private lazy var backgroundImage: UIImageView = {
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
        self.layer.cornerRadius  = 20
        self.layer.borderWidth = 3.0
        self.layer.borderColor = UIColor.white.cgColor
        self.clipsToBounds = true
    }
}
