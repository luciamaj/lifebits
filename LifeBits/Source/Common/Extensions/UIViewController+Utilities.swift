//
//  UIViewController+Utilities.swift
//  LifeBits
//
//  Created by lu on 23/09/18.
//  Copyright © 2018 LuciaMaj. All rights reserved.
//

import Foundation

extension UIViewController {
    func withNavigation() -> UINavigationController {
        let navigationController = UINavigationController(rootViewController: self)
        return navigationController
    }
}
