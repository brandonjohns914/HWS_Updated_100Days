//
//  ShowingAlertMessages.swift
//  GuessTheFlag
//
//  Created by Brandon Johns on 11/20/23.
//

import SwiftUI

struct ShowingAlertMessages: View {
    @State private var showingAlert = false
    var body: some View {
        Button("Show Alert") {
            showingAlert = true
        }
        .alert("Important Message", isPresented: $showingAlert) {
            Button("Delete", role: .destructive) { }
            Button("Cancel", role: .cancel) { }
        } message: {
            Text("Please read this")
        }
    }
}

#Preview {
    ShowingAlertMessages()
}
