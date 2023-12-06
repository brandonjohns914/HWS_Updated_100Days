//
//  ProblemWithSimpleNavigationLink.swift
//  Navigation
//
//  Created by Brandon Johns on 12/5/23.
//

import SwiftUI

struct DetailView: View {
    var number: Int
    
    var body: some View {
        Text("Detail View \(number)")
    }
    
    init(number: Int) {
        self.number = number
        print("Creating detail view \(number)")
    }
}

struct ProblemWithSimpleNavigationLink: View {
    var body: some View {
        List(0..<1000) { i in
            NavigationStack {
                NavigationLink("Tap Me") {
                    Text("Detail View")
                }
            }
        }
    }
}

#Preview {
    ProblemWithSimpleNavigationLink()
}
