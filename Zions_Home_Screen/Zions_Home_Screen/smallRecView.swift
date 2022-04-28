//
//  smallRecView.swift
//  Zions_Home_Screen
//
//  Created by Joshua Bunting on 4/25/22.
//

import Foundation
import UIKit

class smallRecView: UIView {
    
    private lazy var backgroundImage: UIImageView = {
        var backgroundImage = UIImageView()
        backgroundImage.clipsToBounds = true
        backgroundImage.translatesAutoresizingMaskIntoConstraints = false
        return backgroundImage
    }()
    
    private lazy var liveImage: UIImageView = {
        var liveImage = UIImageView()
        liveImage.clipsToBounds = true
        liveImage.contentMode = .scaleAspectFit
        liveImage.translatesAutoresizingMaskIntoConstraints = false
        return liveImage
    }()
    
    private var label: UILabel = {
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
    
    private func addConstraints() {
        let margins = layoutMarginsGuide
        
        var constraints = [NSLayoutConstraint]()
        
        constraints.append(backgroundImage.topAnchor.constraint(equalTo: margins.topAnchor,constant: -8))
        constraints.append(backgroundImage.bottomAnchor.constraint(equalTo: margins.bottomAnchor,constant: 8))
        constraints.append(backgroundImage.leadingAnchor.constraint(equalTo: margins.leadingAnchor,constant: -8))
        constraints.append(backgroundImage.trailingAnchor.constraint(equalTo: margins.trailingAnchor,constant: 8))
        
        constraints.append(label.leadingAnchor.constraint(equalTo: backgroundImage.leadingAnchor,constant: 0))
        constraints.append(label.trailingAnchor.constraint(equalTo: backgroundImage.trailingAnchor,constant: 0))
        constraints.append(label.bottomAnchor.constraint(equalTo: backgroundImage.bottomAnchor,constant: 0))
        
        constraints.append(liveImage.heightAnchor.constraint(equalToConstant: 20))
        constraints.append(liveImage.widthAnchor.constraint(equalToConstant: 20))
        constraints.append(liveImage.leadingAnchor.constraint(equalTo: margins.leadingAnchor,constant: 100))
        constraints.append(liveImage.trailingAnchor.constraint(equalTo: margins.trailingAnchor,constant: 10))
        constraints.append(liveImage.topAnchor.constraint(equalTo: margins.topAnchor,constant: -10))
        
        NSLayoutConstraint.activate(constraints)
    }
    
    private func setUpViews() {
        self.addSubview(backgroundImage)
        self.addSubview(label)
        self.addSubview(liveImage)
    }
    
    func setImage(newImage: String) {
        backgroundImage.image = UIImage(named: newImage)
    }
    
    func setlabel(newLabel: String) {
        label.text = newLabel
    }
    func setLiveImage(newImage: String) {
        liveImage.image = UIImage(named: newImage)
    }
}
