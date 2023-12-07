//
//  MakingNavigationTitleEditable.swift
//  Navigation
//
//  Created by Brandon Johns on 12/6/23.
//

import SwiftUI

struct MakingNavigationTitleEditable: View {
    
    @State private var title = "SwiftUI"
    var body: some View {
        NavigationStack {
            Text("Hello, World!")
                .navigationTitle($title)
                .navigationBarTitleDisplayMode(.inline)
        }
    }
}

#Preview {
    MakingNavigationTitleEditable()
}
