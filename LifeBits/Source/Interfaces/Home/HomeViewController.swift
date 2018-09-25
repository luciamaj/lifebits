//
//  ViewController.swift
//  LifeBits
//
//  Created by lu on 22/09/18.
//  Copyright © 2018 LuciaMaj. All rights reserved.
//

import UIKit
import RealmSwift

class HomeViewController: BaseViewController {
        
    override var viewModel: HomeViewModel {
        guard let vm = super.viewModel as? HomeViewModel else {
            fatalError("viewmodel of the wrong type")
        }
        return vm
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let realm = try! Realm()
        print(Realm.Configuration.defaultConfiguration.fileURL ?? "")
        
        let firstEntry = Entry()
        firstEntry.title = "My second Entry"
        firstEntry.content = "Just to try"
                
        try! realm.write {
            realm.add(firstEntry)
        }
        
        let results = realm.objects(Entry.self).filter("title = 'My first Entry'")
        print(results.count)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tabBar(_ tabBar: UITabBar, didSelect item: UITabBarItem) {
        switch item.tag {
            
        case 1:
            let shared = NavigationManager()
            print("suca")

            shared.replaceRoot(CalendarViewController())
        case 2:
             print("ciao")
            break
        default:
            break
        }
    }
}

