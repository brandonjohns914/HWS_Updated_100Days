//
//  ContentView.swift
//  GuessTheFlag
//
//  Created by Brandon Johns on 11/20/23.
//

import SwiftUI

struct ContentView: View {

    var body: some View {
        NavigationStack {
            VStack(alignment: .center, spacing: 20) {
                NavigationLink("Starting Design") {
                    StartingDesign()
                }
                NavigationLink("Upgraded Design") {
                    UpgradedDesign()
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
