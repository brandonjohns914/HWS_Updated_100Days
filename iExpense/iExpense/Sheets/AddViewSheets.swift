//
//  AddViewSheets.swift
//  iExpense
//
//  Created by Brandon Johns on 12/6/23.
//

import SwiftUI

struct AddViewSheets: View {
    @Environment(\.dismiss) var dismiss
    
    var expenses: Expenses
    @State private var name = ""
    @State private var type = "Personal"
    @State private var amount = 0.0
    let localCurrency = Locale.current.currency?.identifier ?? "USD"
    let types = ["Business", "Personal"]
    
    var body: some View {
        NavigationStack {
            Form {
                TextField("Name", text: $name)
                
                Picker("Type", selection: $type) {
                    ForEach(types, id: \.self) {
                        Text($0)
                    }
                }
                
                TextField("Amount", value: $amount, format: .currency(code: localCurrency))
                    .keyboardType(.decimalPad)
            }
            .navigationTitle("Add new expense")
            .toolbar {
                Button("Save") {
                    let item = ExpenseItem(name: name, type: type, amount: amount)
                    expenses.items.append(item)
                    dismiss()
                }
            }
        }
    }
}

#Preview {
    AddViewSheets(expenses: Expenses())
}
