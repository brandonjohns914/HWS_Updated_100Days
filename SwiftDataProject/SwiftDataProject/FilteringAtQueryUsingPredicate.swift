//
//  FilteringAtQueryUsingPredicate.swift
//  SwiftDataProject
//
//  Created by Brandon Johns on 12/12/23.
//

import SwiftData
import SwiftUI

struct FilteringAtQueryUsingPredicate: View {
    @Environment(\.modelContext) var modelContext
/*
    @Query(sort: \User.name) var users: [User]
    
    @Query(filter: #Predicate<User> { user in
        user.name.contains("R")
    }, sort: \User.name) var users: [User]
    
    @Query(filter: #Predicate<User> { user in
        user.name.localizedStandardContains("R") && user.city == "London"
    }, sort: \User.name) var users: [User]
  */
    @Query(filter: #Predicate<User> { user in
        if user.name.localizedStandardContains("R") {
            if user.city == "London" {
                return true
            } else {
                return false
            }
        } else {
            return false
        }
    }, sort: \User.name) var users: [User]
    
    var body: some View {
        NavigationStack {
            List(users){ user in
                Text(user.name)
            }
            .navigationTitle("Users")
            .toolbar {
                Button("Add Samples", systemImage: "plus") {
                    try? modelContext.delete(model: User.self)
                    let first = User(name: "Ed Sheeran", city: "London", joinDate: .now.addingTimeInterval(86400 * -10))
                    let second = User(name: "Rosa Diaz", city: "New York", joinDate: .now.addingTimeInterval(86400 * -5))
                    let third = User(name: "Roy Kent", city: "London", joinDate: .now.addingTimeInterval(86400 * 5))
                    let fourth = User(name: "Johnny English", city: "London", joinDate: .now.addingTimeInterval(86400 * 10))
                    
                    modelContext.insert(first)
                    modelContext.insert(second)
                    modelContext.insert(third)
                    modelContext.insert(fourth)
                }
            }
        }
    }
}

#Preview {
    FilteringAtQueryUsingPredicate()
}
