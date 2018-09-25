//
//  TabBarViewController.swift
//  
//
//  Created by lu on 24/09/18.
//

import UIKit

class TabBarViewController: UITabBarController, UITabBarControllerDelegate {
    
    class func instantiateFromNib() -> TabBarViewController {
        let nib = UINib(nibName: "TabBarViewController", bundle: nil)
        let vc = nib.instantiate(withOwner: nil, options: nil).first as! TabBarViewController
        return vc
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        //viewControllers = tabBarList
         self.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
