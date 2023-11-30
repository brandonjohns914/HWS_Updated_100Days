//
//  PushingNewViewsOntoStackUsingNavigationLink.swift
//  Moonshot
//
//  Created by Brandon Johns on 11/30/23.
//

import SwiftUI

struct PushingNewViewsOntoStackUsingNavigationLink: View {
    var body: some View {
        NavigationStack {
            NavigationLink {
                Text("Detail View")
            } label: {
                VStack {
                    Text("This is the label")
                    Text("so is this")
                    Image(systemName: "face.smiling")
                }
                .font(.largeTitle)
            }
            
            List(0..<100){ row in
                NavigationLink("Row \(row)") {
                    Text("Detail \(row)")
                }
            }
                .navigationTitle("SwiftUI")
        }
    }
}

#Preview {
    PushingNewViewsOntoStackUsingNavigationLink()
}
