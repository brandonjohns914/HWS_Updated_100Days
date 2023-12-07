//
//  CustomizingTheNavigationBarAppearance.swift
//  Navigation
//
//  Created by Brandon Johns on 12/6/23.
//

import SwiftUI

struct CustomizingTheNavigationBarAppearance: View {
    var body: some View {
        NavigationStack {
            List(0..<100) { i in
            Text("Row \(i)")
            }
            .navigationTitle("Title goes here")
            .navigationBarTitleDisplayMode(.inline)
            .toolbarBackground(.blue)
            .toolbarColorScheme(.dark)
            .toolbar(.hidden, for: .navigationBar)
        }
    }
}

#Preview {
    CustomizingTheNavigationBarAppearance()
}
