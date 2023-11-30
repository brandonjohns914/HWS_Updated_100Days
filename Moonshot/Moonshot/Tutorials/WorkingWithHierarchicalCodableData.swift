//
//  WorkingWithHierarchicalCodableData.swift
//  Moonshot
//
//  Created by Brandon Johns on 11/30/23.
//

import SwiftUI

struct User: Codable {
    let name: String
    let address: Address
    
}
struct Address: Codable {
    let street: String
    let city: String
}

struct WorkingWithHierarchicalCodableData: View {
    var body: some View {
        Button("Decode JSON") {
            let input = """
            {
                "name": "Taylor Swift",
                "address": {
                    "street": "555, Taylor Swift Avenue",
                    "city": "Nashville"
                }
            }
            """
            
            let data = Data(input.utf8)
            let decoder = JSONDecoder()
            if let user = try? decoder.decode(User.self, from: data) {
                print(user.address.street)
            }
        }
    }
}

#Preview {
    WorkingWithHierarchicalCodableData()
}
