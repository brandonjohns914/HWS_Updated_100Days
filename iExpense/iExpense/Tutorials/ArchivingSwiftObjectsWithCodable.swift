//
//  ArchivingSwiftObjectsWithCodable.swift
//  iExpense
//
//  Created by Brandon Johns on 11/28/23.
//

import SwiftUI

struct User: Codable {
    let firstName: String
    let lastName: String
}

struct ArchivingSwiftObjectsWithCodable: View {
    @State private var user = User(firstName: "Ellie", lastName: "Dawg")
    var body: some View {
        Button("Save User") {
            let encoder = JSONEncoder()
            if let data = try? encoder.encode(user) {
                UserDefaults.standard.set(data, forKey: "UserData")
            }
        }
    }
}

#Preview {
    ArchivingSwiftObjectsWithCodable()
}
