//
//  BindingStateToUserInterface.swift
//  WeSplit
//
//  Created by Brandon Johns on 11/17/23.
//

import SwiftUI

struct BindingStateToUserInterface: View {
    @State private var name = ""
    var body: some View {
        Form {
            TextField("Enter your name", text: $name)
            Text("Hello, \(name)!")
        }
    }
}

#Preview {
    BindingStateToUserInterface()
}
