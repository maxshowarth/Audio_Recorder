//
//  CircularButton.swift
//  Audio_Recorder
//
//  Created by Max Howarth on 2018-06-07.
//  Copyright © 2018 Howarth Technologies. All rights reserved.
//

import UIKit
import Pulsator

class CircularButton: UIButton {
    
    override func draw(_ rect: CGRect) {
        let insetPath = rect.insetBy(dx: 5, dy: 5)
        let path = UIBezierPath(ovalIn: insetPath)
        UIColor.white.setStroke()
        var lineWidth: CGFloat = 2
        path.lineWidth = lineWidth
        path.stroke()
    }
    
        func addHalo() {
        let pulsator = Pulsator()
        pulsator.position = CGPoint(x: 100, y: 100)
        pulsator.numPulse = 3
        pulsator.fromValueForRadius = 0.33
        pulsator.radius = 300
        pulsator.animationDuration = 3
        pulsator.repeatCount = 3
        pulsator.backgroundColor = UIColor(red: 0, green: 0.455, blue: 0.756, alpha: 1).cgColor
        pulsator.autoRemove = true
        layer.addSublayer(pulsator)
        pulsator.start()
    }
    
    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}
