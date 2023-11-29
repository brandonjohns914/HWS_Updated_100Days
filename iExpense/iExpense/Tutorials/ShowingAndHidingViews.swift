//
//  ShowingAndHidingViews.swift
//  iExpense
//
//  Created by Brandon Johns on 11/28/23.
//

import SwiftUI

struct SecondView: View {
    @Environment(\.dismiss) var dismiss
    let name: String
    var body: some View {
        Text("Hello \(name)")
        Button("Dismiss") {
            dismiss()
        }
    }
}

struct ShowingAndHidingViews: View {
    @State private var showingSheet = false
    
    var body: some View {
        Button("Show Sheet") {
            showingSheet.toggle()
        }
        .sheet(isPresented: $showingSheet) {
            SecondView(name: "Ellie")
        }
    }
}

#Preview {
    ShowingAndHidingViews()
}
