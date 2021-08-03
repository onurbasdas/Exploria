//
//  ViewController.swift
//  Exploria
//
//  Created by Onur Başdaş on 3.07.2021.
//

import UIKit

class LoginScreen: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func signUpClicked(_ sender: Any) {
        performSegue(withIdentifier: "toDetailsVC", sender: nil)
    }
    
    @IBAction func logInClicked(_ sender: Any) {
        performSegue(withIdentifier: "toDetailsVC", sender: nil)
    }
}

