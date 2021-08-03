//
//  ForgotPasswordViewController.swift
//  Exploria
//
//  Created by Onur Başdaş on 4.07.2021.
//

import UIKit

class ForgotPasswordViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func backButtonClicked(_ sender: Any) {
        loadHomeScreen(identifier: "LogInScreen")
    }
}
