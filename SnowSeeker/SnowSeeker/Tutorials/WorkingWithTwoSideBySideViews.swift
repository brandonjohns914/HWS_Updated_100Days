//
//  WorkingWithTwoSideBySideViews.swift
//  SnowSeeker
//
//  Created by Brandon Johns on 4/2/24.
//

import SwiftUI

struct WorkingWithTwoSideBySideViews: View {
    var body: some View {
        NavigationSplitView(columnVisibility: .constant(.all)) {
            NavigationLink("Primary") {
                Text("New view")
            }
        } detail: {
            Text("Content")
                .navigationTitle("Content View")
        }
        .navigationSplitViewStyle(.balanced)
       }
}

#Preview {
    WorkingWithTwoSideBySideViews()
}
