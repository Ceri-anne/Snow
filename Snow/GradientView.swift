//
//  GradientView.swift
//  Snow
//
//  Copyright © 2019 Jackson, Ceri-anne. All rights reserved.
//

import UIKit

class GradientView: UIView {
    
    var startColor: UIColor = UIColor.white
    var endColor: UIColor = UIColor.white

    override class var layerClass: AnyClass {
        return CAGradientLayer.self
    }
    
    override func layoutSubviews() {
        (layer as! CAGradientLayer).colors = [startColor.cgColor, endColor.cgColor]
    }
}
