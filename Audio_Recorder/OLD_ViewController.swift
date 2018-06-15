//
//  ViewController.swift
//  Audio_Recorder
//
//  Created by Max Howarth on 2018-06-07.
//  Copyright © 2018 Howarth Technologies. All rights reserved.
//

import UIKit
import AVFoundation
import Firebase
import FirebaseDatabase
import Pulsator

var phoneNumber: String = ""
//let storage = Storage.storage()
//let topStorageRef = storage.reference()
//var storageRef: StorageReference = topStorageRef




class ViewController: UIViewController, AVAudioRecorderDelegate {
    
    var circleTest: UIView = CircleLayerView()
    //MARK: Properties
    let meetingsRef = Database.database().reference(withPath: "meetings")
    var recordingSession: AVAudioSession!
    var audioRecorder: AVAudioRecorder!
    
    @IBOutlet weak var phoneNumberLabel: UILabel!
    var phoneNumber: String? = nil

    override func viewDidLoad() {
        super.viewDidLoad()
        recordButton.addHalo()
        circleTest.draw(CGRect(x: 5, y: 5, width: 100, height: 100))
        view.addSubview(circleTest)
        
        // Do any additional setup after loading the view, typically from a nib.
        //Medium Gradient
        
        
        
        phoneNumberLabel.text = phoneNumber
//        storageRef = topStorageRef.child(phoneNumber!)
        recordingSession = AVAudioSession.sharedInstance()
        do {
            try recordingSession.setCategory(AVAudioSessionCategoryPlayAndRecord)
            try recordingSession.setActive(true)
            recordingSession.requestRecordPermission() { [unowned self] allowed in
                DispatchQueue.main.async {
                    if allowed {
                        // good to record!
                    } else {
                        // failed to record!
                    }
                }
            }
        } catch {
            // failed to record!
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    @IBOutlet weak var recordButton: CircularButton!
    var recordButton1: UIButton!

    
    func startRecording() {
        //MARK: Recording Properties
        let audioFileName = getDocumentsDirectory().appendingPathComponent("recording.m4a")
        let settings = [
            AVFormatIDKey: Int(kAudioFormatMPEG4AAC),
            AVSampleRateKey: 12000,
            AVNumberOfChannelsKey: 1,
            AVEncoderAudioQualityKey: AVAudioQuality.high.rawValue
        ]
        //MARK: Start Audio Recording
        do {
            audioRecorder = try AVAudioRecorder(url: audioFileName, settings: settings)
            audioRecorder.delegate = self
            audioRecorder.record()
            recordButton.setTitle("Tap to Stop", for: .normal)
        } catch {
            finishRecording(success: false)
        }
        //MARK: Create Firebase Reference
    
        let meeting = Meeting(creator: phoneNumber!)
    
    }
    
    func finishRecording(success: Bool) {
        audioRecorder.stop()
        audioRecorder = nil
        // TODO: Need to change the way the meeting recording starts so that the name is returned as a variable which is stored.
//        FirebaseUtilities.uploadToFirebase(fileName: getDocumentsDirectory().appendingPathComponent("recording.m4a"))
        
//        FirebaseUtilities.uploadToFirebase(fileName: "meetingAudio", onDeviceFileURL: getDocumentsDirectory().appendingPathComponent("recording.m4a"), firebaseTargetLocation: <#T##StorageReference#>)
        
        
        //TODO: Not dynamically getting filepath to audio recording
        
        if success {
            recordButton.setTitle("Tap to Re-record", for: .normal)
        } else {
            recordButton.setTitle("Tap to Record", for: .normal)
            // recording failed :(
        }
    }
    @IBAction func recordTapped(_ sender: CircularButton) {
//        recordButton.animation = "pop"
//        recordButton.animate()
        
        recordButton.addHalo()
        
        if audioRecorder == nil {
            startRecording()
        } else {
            finishRecording(success: true)
        }
    }
    
    func audioRecorderDidFinishRecording(_ recorder: AVAudioRecorder, successfully flag: Bool) {
        if !flag {
            finishRecording(success: false)
        }
    }
    
    // Firebase Storage
    
//    func uploadToFirebase(fileName: URL, meeting: Meeting) {
//        let onDeviceRecording
//    }
//
//
//    func uploadToFirebase(fileName: URL) {
//        let audioReference = storageRef.child("audioRecordings")
//        let cloudFileRef = audioReference.child("file.mp4")
//
//        let uploadTask = cloudFileRef.putFile(from: fileName, metadata: nil) { (metadatda, error) in
//            guard let metadata = metadatda else {
//                // An error occurred
//                return
//            }
//        }
//
//    }

    
    
}



func getDocumentsDirectory() -> URL {
    let paths = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)
    return paths[0]
}

