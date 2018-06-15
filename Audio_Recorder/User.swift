//
//  User.swift
//  Audio_Recorder
//
//  Created by Max Howarth on 2018-06-15.
//  Copyright © 2018 Howarth Technologies. All rights reserved.
//

import Foundation
import Firebase

class User {
    
    // MARK: Create globally shared instance of user class
    static var user = User()
    private init() {
        
    }
    
    var phoneNumber: Int?
    var didLogIn: Bool = false
    
}
