//
//  TinderImageView.swift
//  StackViewTutorial
//
//  Created by Tandem on 24/05/2018.
//  Copyright © 2018 Tandem. All rights reserved.
//

import UIKit

class TinderImageView: UIImageView {
    
    let imageIndexLabel: UILabel = {
        let label = UILabel()
        label.text = ""
        label.textColor = .white
        label.font = UIFont.boldSystemFont(ofSize: 18)
        
        label.layer.shadowOpacity = 0.7
        label.layer.shadowOffset = .zero
        return label
    }()
    
    @IBInspectable
    var imageIndex: NSNumber! {
        didSet {
            print(imageIndex)
            let imageName = "daenerys\(imageIndex.stringValue)"
            self.image = UIImage(named: imageName)
            
            layer.cornerRadius = 5
            
            imageIndexLabel.text = imageIndex.stringValue
        }
    }
    
    //tis will be called everything interface builder draw something
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        addSubview(imageIndexLabel)
        
        //this enable auto layout
        imageIndexLabel.translatesAutoresizingMaskIntoConstraints = false
        
        imageIndexLabel.topAnchor.constraint(equalTo: topAnchor, constant: 8).isActive = true
        imageIndexLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 8).isActive = true
        
//        imageIndexLabel.frame = CGRect(x: 8, y: 8, width: imageIndexLabel.frame.width, height: imageIndexLabel.frame.height)
    }
}
