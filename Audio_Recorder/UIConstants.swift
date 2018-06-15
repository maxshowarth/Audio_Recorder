//
//  UIConstants.swift
//  Audio_Recorder
//
//  Created by Max Howarth on 2018-06-15.
//  Copyright © 2018 Howarth Technologies. All rights reserved.
//

import Foundation
import UIKit

class UIConstants {
    
    static var sharedInstance = UIConstants()
    
    let bottom: CGColor = UIColor(red: 15.0/225 , green: 32.0/255 ,blue: 39.0/255, alpha: 1.0).cgColor
    let middle:CGColor = UIColor(red: 42.0/225 , green: 75.0/255 ,blue: 85.0/255, alpha: 1.0).cgColor
    let top: CGColor = UIColor(red: 44.0/225 , green: 83.0/255 ,blue: 100.0/255, alpha: 1.0).cgColor
    
    private init() {
        
    }
    
    
    func getGradientColors() -> [CGColor] {
        let colors =  [self.bottom, self.middle, self.top]
        return colors
    }
}
