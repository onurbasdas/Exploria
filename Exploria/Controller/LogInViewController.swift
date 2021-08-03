//
//  LogInViewController.swift
//  Exploria
//
//  Created by Onur Başdaş on 4.07.2021.
//

import UIKit

class LogInViewController: UIViewController {
    
    @IBOutlet var emailTextField: UITextField!
    @IBOutlet var passwordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        passwordTextField.isSecureTextEntry = true
    }
    @IBAction func forgotPasswordClicked(_ sender: Any) {
        loadHomeScreen(identifier: "mainTabBarVC_ID")
    }
    
    @IBAction func logInClicked(_ sender: Any) {
        if emailTextField.text == "onur" && passwordTextField.text == "123" {
            loadHomeScreen(identifier: "WalkthroughViewController")
        } else {
            showAlert()
        }
    }
}
