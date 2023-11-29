//
//  UsingAtStateWithClasses.swift
//  iExpense
//
//  Created by Brandon Johns on 11/28/23.
//

import Observation
import SwiftUI

@Observable class User1 {
    var firstName = "Bilbo"
    var lastName = "Baggins"
}


struct UsingAtStateWithClasses: View {
    @State private var user = User1()
    
    var body: some View {
        VStack {
            Text("Your name is \(user.firstName) \(user.lastName)")
            
            TextField("First name", text: $user.firstName)
            TextField("Last name", text: $user.lastName)
        }
    }
}

#Preview {
    UsingAtStateWithClasses()
}
