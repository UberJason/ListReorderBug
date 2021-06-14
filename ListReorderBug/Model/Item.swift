//
//  Item.swift
//  Questlog
//
//  Created by Jason Ji on 5/5/20.
//  Copyright © 2020 Jason Ji. All rights reserved.
//

import Foundation

class Item: Identifiable {
    let id: UUID = UUID()
    var title: String
    var status: Status
    
    init(title: String, status: Status) {
        self.title = title
        self.status = status
    }
}
