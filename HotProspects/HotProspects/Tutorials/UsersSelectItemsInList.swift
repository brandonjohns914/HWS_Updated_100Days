//
//  UsersSelectItemsInList.swift
//  HotProspects
//
//  Created by Brandon Johns on 3/28/24.
//

import Foundation
import SwiftUI

struct UsersSelectItemsInList: View {
    @State private var selection = Set<String>()
    let users = ["Tohru", "Yuki", "Kyo", "Momiji"]
    
    var body: some View {
        
        List(users, id: \.self, selection: $selection) { user in
            Text(user)
            
        }
        if selection.isEmpty == false {
            
            Text("You selected \(selection.formatted())")
            
        }
        EditButton()
    }
    
}

#Preview {
    UsersSelectItemsInList()
}
