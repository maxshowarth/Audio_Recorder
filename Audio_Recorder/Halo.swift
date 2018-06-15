//
//  Halo.swift
//  Audio_Recorder
//
//  Created by Max Howarth on 2018-06-15.
//  Copyright © 2018 Howarth Technologies. All rights reserved.
//

import Foundation
import UIKit


class Halo: UIView {
    var circleLayer: CAShapeLayer!
    var stroke: Int?
    var radius: Double?
    var topLeftCorner: CGPoint?

    internal func drawRingFittingInsideView(rect: CGRect)->()
    {
        let desiredLineWidth:CGFloat = 4    // your desired value
        let hw:CGFloat = desiredLineWidth/2
        
        let circlePath = UIBezierPath(ovalInRect: CGRectInset(rect,hw,hw) )
        
        let shapeLayer = CAShapeLayer()
        shapeLayer.path = circlePath.CGPath
        shapeLayer.fillColor = UIColor.clearColor().CGColor
        shapeLayer.strokeColor = UIColor.redColor().CGColor
        shapeLayer.lineWidth = desiredLineWidth
        layer.addSublayer(shapeLayer)
    }
            
        }
        
    }
}

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
