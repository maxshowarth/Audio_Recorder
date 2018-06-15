//
//  meetingViewController.swift
//  Audio_Recorder
//
//  Created by Max Howarth on 2018-06-14.
//  Copyright © 2018 Howarth Technologies. All rights reserved.
//

import UIKit

class meetingViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        var bottom: CGColor = UIColor(red: 15.0/225 , green: 32.0/255 ,blue: 39.0/255, alpha: 1.0).cgColor
//        var bnottom2 = UIColor("2C5364)
        var middle:CGColor = UIColor(red: 42.0/225 , green: 75.0/255 ,blue: 85.0/255, alpha: 1.0).cgColor
        var top: CGColor = UIColor(red: 44.0/225 , green: 83.0/255 ,blue: 100.0/255, alpha: 1.0).cgColor
        view.gradientLayer.colors = [ bottom, middle, top]
        view.gradientLayer.gradient = GradientPoint.bottomTop.draw()
        

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
