//
//  firebaseUtilities.swift
//  Audio_Recorder
//
//  Created by Max Howarth on 2018-06-14.
//  Copyright © 2018 Howarth Technologies. All rights reserved.
//

import Foundation
import Firebase
import FirebaseDatabase


class FirebaseUtilities {
    
    static func uploadToFirebase(fileName: String, onDeviceFileURL: URL, firebaseTargetLocation: StorageReference) {
        let firebaseObjectURL = firebaseTargetLocation.child(fileName)
        
        let uploadTask = firebaseObjectURL.putFile(from: onDeviceFileURL, metadata: nil) { (metadata, error) in
            guard let metadata = metadata else {
                // An error occurred
                return
            }
        }
    }
    
    
    
}
