//
//  AddingNavigationBar.swift
//  WeSplit
//
//  Created by Brandon Johns on 11/17/23.
//

import SwiftUI

struct AddingNavigationBar: View {
    var body: some View {
        NavigationStack {
            Form {
                Section {
                    Text("Hello, World!")
                    Text("Hello, World!")
                    Text("Hello, World!")
                }
                
                Section {
                    Text("Hello, World!")
                    Text("Hello, World!")
                    Text("Hello, World!")
                    Text("Hello, World!")
                }
            }
            .navigationTitle("SwiftUI")
        }
    }
}

#Preview {
    AddingNavigationBar()
}
