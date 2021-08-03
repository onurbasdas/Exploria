//
//  SignUpViewController.swift
//  Exploria
//
//  Created by Onur Başdaş on 4.07.2021.
//

import UIKit

class SignUpViewController: UIViewController {
    
    @IBOutlet var userNameText: UITextField!
    @IBOutlet var emailText: UITextField!
    @IBOutlet var passwordText: UITextField!
    @IBOutlet var confirmText: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        conf()
    }
    
    func conf() {
        passwordText.isSecureTextEntry = true
        confirmText.isSecureTextEntry = true
    }
    
    @IBAction func signUpClicked(_ sender: Any) {
        
    }
}
