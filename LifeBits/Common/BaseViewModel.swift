//
//  BaseViewModel.swift
//  LifeBits
//
//  Created by lu on 23/09/18.
//  Copyright © 2018 LuciaMaj. All rights reserved.
//

import Foundation

import UIKit

protocol BaseViewProtocol: AnyObject {
    func dataLoaded()
    func goBack()
}

class BaseViewModel: NSObject {
    
    weak var view: BaseViewProtocol?
    
    init(withView view: BaseViewProtocol) {
        super.init()
        self.view = view
    }
    
    func setup() {
        self.loadData()
    }
    
    func loadData() {
        self.view?.dataLoaded()
    }
}
