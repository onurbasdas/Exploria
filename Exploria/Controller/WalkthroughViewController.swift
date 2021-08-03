//
//  WalkthroughViewController.swift
//  Exploria
//
//  Created by Onur Başdaş on 6.07.2021.
//

import UIKit

class WalkthroughViewController: UIViewController, customPageViewControllerDelegate {
    
    @IBOutlet var nextButton: UIButton!
    @IBOutlet var pageControl: UIPageControl!
    
    var myCustomPageViewController: WalkthroughPageViewController!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func numberOfPage(numberOfPage: Int) {
        pageControl.numberOfPages = numberOfPage
    }
    
    func pageChangedTo(index: Int) {
        pageControl.currentPage = index
    }
    
    override func viewDidAppear(_ animated: Bool) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        if let walkthorughViewController = storyboard.instantiateViewController(identifier: "WalkthroughViewController") as? WalkContentViewController {
            present(walkthorughViewController, animated: true, completion: nil)
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let desinationViewController = segue.destination as? WalkthroughPageViewController {
            myCustomPageViewController = desinationViewController
            myCustomPageViewController.customDelegate = self
        }
    }
    
    @IBAction func pageControlValueChanged(_ sender: Any) {
        let currentPageIndex = pageControl.currentPage
        myCustomPageViewController.goToPage(index: currentPageIndex)
    }
    
    @IBAction func nextButtonTapped(_ sender: Any) {
        loadHomeScreen(identifier: "MainSearchViewController")
    }
    
}
