//
//  EditingSwiftDataModelTechniques.swift
//  SwiftDataProject
//
//  Created by Brandon Johns on 12/12/23.
//

import SwiftData
import SwiftUI

struct EditingSwiftDataModelTechniques: View {
    @Environment(\.modelContext) var modelContext
    @Query(sort: \User.name) var users: [User]
    @State private var path = [User]()
    
    var body: some View {
        NavigationStack(path: $path){
            List(users) { user in
                NavigationLink(value: user){
                    Text(user.name)
                }
            }
            .navigationTitle("Users")
            .navigationDestination(for: User.self) { user in
            EditUserView(user: user)
                
            }
            .toolbar {
                Button("Add User", systemImage: "plus") {
                    let user = User(name: "", city: "", joinDate: .now)
                    modelContext.insert(user)
                    path = [user]
                }
            }
        }
    }
}

#Preview {
    EditingSwiftDataModelTechniques()
}
