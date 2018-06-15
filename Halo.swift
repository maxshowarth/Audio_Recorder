//
//  Halo.swift
//  Audio_Recorder
//
//  Created by Max Howarth on 2018-06-15.
//  Copyright © 2018 Howarth Technologies. All rights reserved.
//

import Foundation
import UIKit


//class Halo: CAShapeLayer {
//    
//    var topLeftCorner: CGPoint
//    var sideLength: CGFloat
//    var topRightCorner
//    
//    
////    lazy var xBound: CGFloat = topLeftCorner.x += sideLength
////    lazy var yBoung: CGFloat = topLeftCorner.y += sideLength
////    lazy var topRightCorner = CGPoint(x: (xBound, topLeftCorner.y)
////    lazy var bottomRightCorner = CGPoint(x: topLeftCorner.x+100, y: topLeftCorner.y+100)
////    lazy var bottomLeftCorner = CGPoint(x: topLeftCorner.x+100, y: topLeftCorner.y+100)
//    
//    
//    
//}

class CircleLayerView: UIView {
    var circleLayer: CAShapeLayer!
    
    override func draw(_ rect: CGRect) {
        super.draw(rect)
        if circleLayer == nil {
            circleLayer = CAShapeLayer()
            let radius: CGFloat = 150.0
            circleLayer.path = UIBezierPath(roundedRect: CGRect(x: 0, y: 0, width: 2.0 * radius, height: 2.0 * radius), cornerRadius: radius).cgPath
            circleLayer.position = CGPoint(x: self.frame.midX - radius, y: self.frame.midY - radius)
            circleLayer.fillColor = UIColor.blue.cgColor
            self.layer.addSublayer(circleLayer)
        }
    }
}
