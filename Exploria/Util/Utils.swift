//
//  Utils.swift
//  Exploria
//
//  Created by Onur Başdaş on 5.07.2021.
//

import UIKit

extension UITextField {
    func addBottomBorder(){
        let bottomLine = CALayer()
        bottomLine.frame = CGRect(x: 0, y: self.frame.size.height - 1, width: self.frame.size.width, height: 1)
        bottomLine.backgroundColor = UIColor.darkGray.cgColor
        borderStyle = .none
        layer.addSublayer(bottomLine)
    }
}

extension UIViewController {
    func loadHomeScreen(identifier: String) {
        let storyBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let mainTabBarController = storyBoard.instantiateViewController(identifier: identifier)
        mainTabBarController.modalPresentationStyle = .fullScreen
        mainTabBarController.modalTransitionStyle = .crossDissolve
        self.present(mainTabBarController, animated: true, completion: nil)
    }
    
    func showAlert() {
        let alert = UIAlertController(title: "Warning", message: "Please check your password or username.", preferredStyle: UIAlertController.Style.alert)
        let okButton = UIAlertAction(title: "OK", style: UIAlertAction.Style.cancel, handler: nil)
        alert.addAction(okButton)
        self.present(alert, animated: true, completion: nil)
    }
}
