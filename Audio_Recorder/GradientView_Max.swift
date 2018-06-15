//
//  GradientView.swift
//  Audio_Recorder
//
//  Created by Max Howarth on 2018-06-08.
//  Copyright © 2018 Howarth Technologies. All rights reserved.
//

import UIKit

@IBDesignable class GradientView_Max: UIView {
    @IBInspectable var topColor: UIColor = UIColor.white
    @IBInspectable var middleColor: UIColor = UIColor.white
    @IBInspectable var bottomColor: UIColor = UIColor.black
    
    override class var layerClass: AnyClass {
        return CAGradientLayer.self
    }
    
    override func layoutSubviews() {
        (layer as! CAGradientLayer).colors = [topColor.cgColor, middleColor.cgColor, bottomColor.cgColor]
    }
}
