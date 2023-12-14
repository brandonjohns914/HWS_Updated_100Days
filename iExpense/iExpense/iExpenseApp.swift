//
//  iExpenseApp.swift
//  iExpense
//
//  Created by Brandon Johns on 11/28/23.
//

import SwiftUI

@main
struct iExpenseApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .modelContainer(for: ExpensesItemSwiftData.self)
    }
}
