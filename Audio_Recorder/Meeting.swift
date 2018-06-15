////
////  Meeting.swift
////  Audio_Recorder
////
////  Created by Max Howarth on 2018-06-11.
////  Copyright © 2018 Howarth Technologies. All rights reserved.
////
//import AVFoundation
//import Foundation
//import Firebase
//import FirebaseDatabase
//
//struct Meeting {
//    
//    //MARK: Meeting Properties
//    let ref: DatabaseReference?
//    let key: String
//    //lazy var name: String = generateMeetingName()
//    var name = "toBeSet"
//    let creator: String
//    var inProgress: Bool = true
//    var users = [String]()
//    
//    //Firebase References
//    let meetingsFirebase = Database.database().reference(withPath: "meetings")
//    var firebaseReference: DatabaseReference?
//    
//    init(creator: String, key: String = "") {
//        self.ref = nil
//        self.key = key
//        self.creator = creator
//        self.users.append(creator)
//        self.name = generateMeetingName()
//        let inProgressMeetingsFirebase = meetingsFirebase.child("in-progress")
//        self.firebaseReference = inProgressMeetingsFirebase.child(name)
//        firebaseReference!.setValue(self.infoForFirebase())
//    }
//    
//    //TODO: add method to send to Firebase
//    
//    func toFirebase(recordingPath: URL) {
//        
//    }
//    
//    func infoForFirebase() -> Any {
//        let theName = self.name
//        return [
//            "name": theName,
//            "creator" : creator,
//            "inProgress": inProgress,
//            "users": users.joined(separator: ",")] as NSDictionary
//    }
//
//    func generateMeetingName() -> String {
//        var values = [String]()
//        var name: String = ""
//        //MARK: Get list of ready names from Firebase
//        meetingsFirebase.child("readyNames").observeSingleEvent(of: .value, with: { (snapshot) in
//            var snapshotValue = snapshot.value as! NSArray
//            for value in snapshotValue {
//                values.append(value as! String )
//            }
//            name = values[0]
//            //MARK: Remove value from array, and send back to Firebase
//            values.remove(at: 0)
//            self.meetingsFirebase.child("readyNames").setValue(values)
//        })
//
//        return name
//    }
//}
//
