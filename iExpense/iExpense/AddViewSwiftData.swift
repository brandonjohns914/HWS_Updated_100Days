//
//  AddViewSwiftData.swift
//  iExpense
//
//  Created by Brandon Johns on 12/13/23.
//

import SwiftUI

struct AddViewSwiftData: View {
    @Environment(\.dismiss) var dismiss
    @Environment(\.modelContext) var modelContext
    
    @State private var name = "New Expense"
    @State private var type = "Personal"
    @State private var amount = 0.0
    
    let localCurrency = Locale.current.currency?.identifier ?? "USD"
        static let types = ["Business", "Personal"]
    
    var body: some View {
        
        Form {
            
            TextField("Name", text: $name)
            Picker("Type", selection: $type) {
                ForEach(Self.types, id: \.self) {
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
                    let item = ExpensesItemSwiftData(name: name, type: type, amount: amount)
                    modelContext.insert(item)
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
    AddViewSwiftData()
        .modelContainer(for: ExpensesItemSwiftData.self)
}
