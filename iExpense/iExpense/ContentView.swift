//
//  ContentView.swift
//  iExpense
//
//  Created by Brandon Johns on 11/28/23.
//

import SwiftUI




struct ContentView: View {
    var body: some View {
        NavigationStack {
            VStack {
                Text("Welcome to iExpense")
                Text("Select A Version" )
                
                NavigationLink("SwiftData Version"){
                    ContentNavigationSwiftData()
                }
            }
            .navigationTitle("iExpense")
            .toolbar {
                ToolbarItem(placement: .topBarLeading) {
                    NavigationLink("Sheet View") {
                        SheetVersion()
                    }
                }
                
                ToolbarItem(placement: .topBarTrailing) {
                    NavigationLink("Navigation View") {
                        NavigationVersion()
                    }
                }
            }
        }
    }
}

#Preview {
    ContentView()
        .modelContainer(for: ExpensesItemSwiftData.self)
}
