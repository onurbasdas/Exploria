//
//  SignUpController.swift
//  Exploria
//
//  Created by Onur Başdaş on 3.07.2021.
//

import UIKit

class SegmentedController: UIViewController {
    
    @IBOutlet var signUpView: UIView!
    @IBOutlet var logInView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        signUpView.alpha = 1
        logInView.alpha = 0
    }
    
    @IBAction func segmentClicked(_ sender: UISegmentedControl) {
        if sender.selectedSegmentIndex == 0 {
            signUpView.alpha = 1
            logInView.alpha = 0
        } else {
            signUpView.alpha = 0
            logInView.alpha = 1
        }
    }
}
