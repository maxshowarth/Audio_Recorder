//
//  gradientSubview.swift
//  Audio_Recorder
//
//  Created by Max Howarth on 2018-06-14.
//  Copyright © 2018 Howarth Technologies. All rights reserved.
//

import UIKit

class gradientSubview: UIView {
    
    var topColor: UIColor
    var middleColor: UIColor
    var bottomColor: UIColor
    
    convenience init() {
        self.init()
        self.topColor = UIColor.init(red: 15, green: 32, blue: 39, alpha: 1)
        self.middleColor = UIColor.init(red: 32, green: 58, blue: 67, alpha: 100)
        self.topColor = UIColor.init(red: 44, green: 83, blue: 100, alpha: 100)
        self.frame = CGRect(x: 0, y: 0, width: 100, height: 100)
        self.layoutSubviews()
    }
    
    override class var layerClass: AnyClass {
        return CAGradientLayer.self
    }
    
    override func layoutSubviews() {
                (layer as! CAGradientLayer).colors = [topColor.cgColor, middleColor.cgColor, bottomColor.cgColor]
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}
