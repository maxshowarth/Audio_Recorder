//
//  logInViewController.swift
//  Audio_Recorder
//
//  Created by Max Howarth on 2018-06-15.
//  Copyright © 2018 Howarth Technologies. All rights reserved.
//

import UIKit



class logInViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.gradientLayer.colors = [ UIConstants.sharedInstance.bottom, UIConstants.sharedInstance.middle, UIConstants.sharedInstance.top]
        view.gradientLayer.gradient = GradientPoint.bottomTop.draw()
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBOutlet weak var phoneNumberField: UITextField!
    
    @IBAction func didPressGo(_ sender: UIButton) {
        
        if phoneNumberField.text?.isEmpty ?? true {
            print("No phone number entered")
            phoneNumberField.placeholder = "Enter your phone number"
        } else {
            User.user.phoneNumber = phoneNumberField.text!
            performSegue(withIdentifier: "logInSegue", sender: self)
        }
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
