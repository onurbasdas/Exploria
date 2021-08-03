//
//  WalkContentViewController.swift
//  Exploria
//
//  Created by Onur Başdaş on 8.07.2021.
//

import UIKit

class WalkContentViewController: UIViewController {
    
    static func getInstance(image: String) -> WalkContentViewController {
        let vc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(identifier: "WalkContentViewController") as! WalkContentViewController
        vc.imageName = image
        return vc
    }
    
    @IBOutlet var walkImage: UIImageView!
    
    var imageName = String()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        walkImage.image = UIImage(named: imageName)
    }
    
    
    
    
}
