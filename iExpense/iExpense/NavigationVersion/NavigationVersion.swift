//
//  NavigationVersion.swift
//  iExpense
//
//  Created by Brandon Johns on 12/6/23.
//

import SwiftUI

struct NavigationVersion: View {
    @State private var expenses = Expenses()
 
    
    var body: some View {
        NavigationStack {
            List {
                
                ExpenseSection(title: "Business", expenses: expenses.businessItems, deleteItems: removeBusinessItems)
                
                ExpenseSection(title: "Personal", expenses: expenses.personalItems, deleteItems: removePersonalItems)
                
            }
            .navigationTitle("iExpense")
            .toolbar {
                NavigationLink {
                    AddViewNavigation(expenses: expenses)
                } label: {
                Label("Add Expense", systemImage: "plus")
            }
        }
        
        }
    }
    func removeItems(at offsets: IndexSet, in inputArray: [ExpenseItem]) {
        var objectsToDelete = IndexSet()
        
        for offset in offsets {
            let item = inputArray[offset]
            
            if let index = expenses.items.firstIndex(of: item){
                objectsToDelete.insert(index)
            }
        }
        expenses.items.remove(atOffsets: objectsToDelete)
    }
    
    func removePersonalItems(at offsets: IndexSet) {
        removeItems(at: offsets, in: expenses.personalItems)
    }
    
    func removeBusinessItems(at offsets: IndexSet) {
        removeItems(at: offsets, in: expenses.businessItems)
    }
}

#Preview {
    NavigationVersion()
}
