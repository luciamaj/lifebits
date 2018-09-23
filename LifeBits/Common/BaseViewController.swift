//
//  BaseViewController.swift
//  LifeBits
//
//  Created by Lucia Maj
//  Copyright © 2018 Lucia Maj. All rights reserved.
//

import UIKit

class BaseViewController: UIViewController {
    
    private var vm: BaseViewModel?
    var viewModel: BaseViewModel? {
        return vm
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationController?.isNavigationBarHidden = true
        
        self.setup()
        self.viewModel?.setup()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }
    
    func setCurrentViewModel(viewModel: BaseViewModel) {
        vm = viewModel
    }
    
    func setup() {
        
    }
}

extension BaseViewController: BaseViewProtocol {
    @objc func dataLoaded() {
        
    }
    
    @objc func goBack() {
    }
}
