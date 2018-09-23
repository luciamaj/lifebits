//
//  Entry.swift
//  LifeBits
//
//  Created by lu on 22/09/18.
//  Copyright © 2018 LuciaMaj. All rights reserved.
//

import Foundation
import RealmSwift

class Entry: Object {
    @objc dynamic var id = UUID().uuidString
    @objc dynamic var title: String?
    @objc dynamic var content: String?
    @objc dynamic var updated : Date? = Date()
    
    override static func primaryKey() -> String? {
        return "id"
    }
}
