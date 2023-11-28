//
//  IntroLists.swift
//  WordScramble
//
//  Created by Brandon Johns on 11/22/23.
//

import SwiftUI

struct IntroLists: View {
    var body: some View {
        VStack(spacing: 20) {
            List {
                Text("Hello, World!")
                Text("Hello, World!")
                Text("Hello, World!")
            }
            List {
                ForEach(0..<5) {
                    Text("Dynamic row \($0)")
                }
            }
            .listStyle(.grouped)
            List {
                Section("Section 1") {
                    Text("Static row 1 ")
                    Text("Static row 2")
                }
                Section("Section 2") {
                    
                    ForEach(0..<5) {
                        Text("Dynamic row \($0)")
                    }
                    
                }
                Section("Section 3") {
                    Text("Static row 3")
                    Text("Static row 4")
                }
            }
        }
    }
}


#Preview {
    IntroLists()
}
