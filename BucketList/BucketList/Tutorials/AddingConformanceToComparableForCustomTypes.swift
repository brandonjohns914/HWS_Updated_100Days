//
//  AddingConformanceToComparableForCustomTypes.swift
//  BucketList
//
//  Created by Brandon Johns on 3/25/24.
//

import SwiftUI
struct User: Identifiable, Comparable {
    let id = UUID()
    var firstName: String
    var lastName: String

    static func <(lhs: User, rhs: User) -> Bool {
        lhs.lastName < rhs.lastName
    }
}


struct AddingConformanceToComparableForCustomTypes: View {
    let values = [1,5,3,6,2,9].sorted()
    let users = [
        User(firstName: "Arnold", lastName: "Rimmer"),
        User(firstName: "Kristine", lastName: "Kochanski"),
        User(firstName: "David", lastName: "Lister"),
    ].sorted()
    
    var body: some View {
        Section {
            List(values, id: \.self) {
                Text(String($0))
            }
        }
        
        Section {
            List(users) { user in
                        Text("\(user.lastName), \(user.firstName)")
                    }
        }
    }
}

#Preview {
    AddingConformanceToComparableForCustomTypes()
}
