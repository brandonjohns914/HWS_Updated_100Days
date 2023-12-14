//
//  ContentNavigationSwiftData.swift
//  iExpense
//
//  Created by Brandon Johns on 12/13/23.
//

import SwiftUI
import SwiftData

struct ContentNavigationSwiftData: View {
    @State private var sortOrder = [
        SortDescriptor(\ExpensesItemSwiftData.name),
        SortDescriptor(\ExpensesItemSwiftData.amount, order: .reverse)
        
    ]
    
    @State private var expenseType = "All"
    
    var body: some View {
        NavigationStack {
            ExpensesList(type: expenseType, sortOrder: sortOrder)
                .navigationTitle("iExpense")
                .toolbar {
                    
                    Menu("Filter", systemImage: "line.3.horizontal.decrease.circle") {
                        Picker("Filter", selection: $expenseType) {
                            Text("Show All Expenses")
                                .tag("All")
                            
                            Divider()
                            
                            ForEach(AddViewSwiftData.types, id: \.self) { type in
                                Text(type)
                                    .tag(type)
                            }
                        }
                    }
                    Menu("Sort", systemImage: "arrow.up.arrow.down") {
                        Picker("Sort By", selection: $sortOrder) {
                            Text("Name (A-Z)")
                                .tag([
                                    SortDescriptor(\ExpensesItemSwiftData.name),
                                    SortDescriptor(\ExpensesItemSwiftData.amount)
                                ])
                            
                            Text("Name (Z-A")
                                .tag([
                                    SortDescriptor(\ExpensesItemSwiftData.name , order: .reverse),
                                    SortDescriptor(\ExpensesItemSwiftData.amount)
                                ])
                            
                            Text("Amount (Cheapest First)")
                                .tag([
                                    SortDescriptor(\ExpensesItemSwiftData.amount),
                                    SortDescriptor(\ExpensesItemSwiftData.name)
                                ])
                            
                            Text("Amount(Most Expensive First")
                                .tag([
                                    SortDescriptor(\ExpensesItemSwiftData.amount, order: .reverse),
                                    SortDescriptor(\ExpensesItemSwiftData.name)
                                ])
                        }
                    }
                    NavigationLink {
                        AddViewSwiftData()
                    } label: {
                        Label("Add Expense", systemImage: "plus")
                        
                    }
                }
            
        }
    }
    
}

#Preview {
    ContentNavigationSwiftData()
        .modelContainer(for: ExpensesItemSwiftData.self)
}
