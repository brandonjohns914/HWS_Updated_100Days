//
//  Job.swift
//  SwiftDataProject
//
//  Created by Brandon Johns on 12/13/23.
//

import SwiftData
import SwiftUI

@Model
class Job {
    var name: String  = "None"
    var priority: Int = 1
    var owner: User?

    init(name: String, priority: Int, owner: User? = nil) {
        self.name = name
        self.priority = priority
        self.owner = owner
    }
}
