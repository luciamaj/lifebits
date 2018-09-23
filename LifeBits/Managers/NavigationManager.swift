//
//  NavigationManager.swift
//  LifeBits
//
//  Created by lu on 23/09/18.
//  Copyright © 2018 LuciaMaj. All rights reserved.
//

import Foundation

//
//  NavigationManager.swift
//  GuidaProsit
//
//  Created by Elena Porcelli.
//  Copyright © 2018 Dedecube. All rights reserved.
//

import UIKit

enum NavigationItem {
    case home
    case calendar

    var viewController: UIViewController {
        switch self {
        case .home:
            let vc = HomeViewController(nibName: "HomeViewController", bundle: nil)
            vc.setCurrentViewModel(viewModel: HomeViewModel(withView: vc))
            return vc
        case .calendar:
            let vc = CalendarViewController(nibName: "CalendarViewController", bundle: nil)
            vc.setCurrentViewModel(viewModel: CalendarViewModel(withView: vc))
            return vc
        }
    }
}

class NavigationManager: NSObject {
    
    private var vc: BaseViewController?
    
    func setCurrentViewController(_ viewController: BaseViewController) {
        self.vc = viewController
    }
    
    func replaceRoot(_ viewController: UIViewController) {
        self.vc?.navigationController?.popToRootViewController(animated: false)
        self.vc?.navigationController?.pushViewController(viewController, animated: false)
    }
    
    func backToPrevious(animated: Bool = true) {
        self.vc?.navigationController?.popViewController(animated: animated)
    }
    
    func backToRoot(animated: Bool = true) {
        self.vc?.navigationController?.popToRootViewController(animated: animated)
    }
    
    func dismiss(animated: Bool = true, completion: (() -> Void)? = nil) {
        self.vc?.navigationController?.dismiss(animated: animated, completion: completion)
    }
    
    func push(_ viewController: UIViewController, animated: Bool = true) {
        self.vc?.navigationController?.pushViewController(viewController, animated: animated)
    }
    
    func present(_ viewController: UIViewController, animated: Bool = true, completion: (() -> Void)? = nil) {
        self.vc?.navigationController?.present(viewController, animated: animated, completion: completion)
    }
    
    func modal(_ viewController: UIViewController, animated: Bool = true, completion: (() -> Void)? = nil) {
        viewController.modalPresentationStyle = .overCurrentContext
        viewController.modalTransitionStyle = .crossDissolve
        self.vc?.modalPresentationStyle = .overCurrentContext
        self.vc?.navigationController?.present(viewController, animated: animated, completion: completion)
    }
}
