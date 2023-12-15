//
//  ShowingEmptyStateWithContentUnavailableView.swift
//  InstaFilter
//
//  Created by Brandon Johns on 12/14/23.
//

import SwiftUI

struct ShowingEmptyStateWithContentUnavailableView: View {
    var body: some View {
        //ContentUnavailableView("No snippets", systemImage: "swift", description: Text("you dont have any saved snippets yet "))
        
        ContentUnavailableView {
            Label("No snippets", systemImage: "swift")
        } description: {
            Text("You dont have any saved snippets yet")
        } actions: {
            Button("Create Snippet") {
                //
            }
            .buttonStyle(.borderedProminent)
        }
    }
}

#Preview {
    ShowingEmptyStateWithContentUnavailableView()
}
