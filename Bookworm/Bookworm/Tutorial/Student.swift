//
//  Student.swift
//  Bookworm
//
//  Created by Brandon Johns on 12/11/23.
//

import SwiftUI
import SwiftData


@Model
class Student {
    var id: UUID
    
    var name: String
    
    init(id: UUID, name: String ){
        self.id = id
        self.name = name
    }
}
