//
//  ShowingMultipleOptionsWithConfirmationDialog.swift
//  InstaFilter
//
//  Created by Brandon Johns on 12/14/23.
//

import SwiftUI

struct ShowingMultipleOptionsWithConfirmationDialog: View {
    @State private var showingConfirmation = false
    @State private var backgroundColor = Color.white
    var body: some View {
        Button("Hello, World!") {
            showingConfirmation = true
        }
        .frame(width: 300, height: 300)
        .background(backgroundColor)
        .confirmationDialog("Change Background", isPresented: $showingConfirmation){
            Button("Red") { backgroundColor = .red }
            Button("Green") {backgroundColor = .green}
            Button("Blue") {backgroundColor = .blue}
            Button("Cancel", role: .cancel) { }
        } message : {
            Text("Select a new color")
        }
    }
}

#Preview {
    ShowingMultipleOptionsWithConfirmationDialog()
}
