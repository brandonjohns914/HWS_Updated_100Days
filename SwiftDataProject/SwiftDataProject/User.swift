//
//  User.swift
//  SwiftDataProject
//
//  Created by Brandon Johns on 12/11/23.
//

import SwiftData
import SwiftUI

@Model
class User {
    var name: String
    var city: String
    var joinDate: Date
    
    init(name: String, city: String, joinDate: Date) {
        self.name = name
        self.city = city
        self.joinDate = joinDate
    }
    
}
