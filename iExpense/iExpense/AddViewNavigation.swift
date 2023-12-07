//
//  AddViewNavigation.swift
//  iExpense
//
//  Created by Brandon Johns on 12/6/23.
//

import SwiftUI

struct AddViewNavigation: View {
    @Environment(\.dismiss) var dismiss
    
    var expenses: Expenses
    @State private var name = "New Expense"
    @State private var type = "Personal"
    @State private var amount = 0.0
    let localCurrency = Locale.current.currency?.identifier ?? "USD"
    let types = ["Business", "Personal"]
    
    var body: some View {
        
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
        .navigationTitle($name)
        .toolbar {
            ToolbarItem(placement: .confirmationAction) {
                Button("Save") {
                    let item = ExpenseItem(name: name, type: type, amount: amount)
                    expenses.items.append(item)
                    dismiss()
                }
            }
            
            ToolbarItem(placement: .cancellationAction) {
                Button("Cancel", role: .cancel) {
                    dismiss()
                }
            }
        }
        .navigationBarBackButtonHidden()
        .navigationBarTitleDisplayMode(.inline)
    }
    
}

#Preview {
    AddViewNavigation(expenses: Expenses())
}
