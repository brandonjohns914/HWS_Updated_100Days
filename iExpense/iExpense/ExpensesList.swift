//
//  ExpensesList.swift
//  iExpense
//
//  Created by Brandon Johns on 12/13/23.
//

import SwiftData
import SwiftUI

struct ExpensesList: View {
    @Environment(\.modelContext) var modelContext
    
    @Query private var expenses: [ExpensesItemSwiftData]
    let localCurrency = Locale.current.currency?.identifier ?? "USD"
       var body: some View {
           List {
               ForEach(expenses) { item in
                   HStack {
                       VStack(alignment: .leading) {
                           Text(item.name)
                               .font(.headline)
                           Text(item.type)
                       }

                       Spacer()
                       
                       Text(item.amount, format: .currency(code: localCurrency))
                           //.style(for: item)
                   }
               }
               .onDelete(perform: removeItems)
           }
       }
    
    init(type: String = "All", sortOrder: [SortDescriptor<ExpensesItemSwiftData>]) {
        _expenses = Query(
            filter: #Predicate<ExpensesItemSwiftData> {
                if type == "All" {
                    return true
                } else {
                    return $0.type == type
                }
            }, sort: sortOrder)
    }
    func removeItems(at offsets: IndexSet) {
        for offset in offsets {
            let item = expenses[offset]
            modelContext.delete(item)
        }
    }
}

#Preview {
    ExpensesList(sortOrder: [SortDescriptor(\ExpensesItemSwiftData.name)])
        .modelContainer(for: ExpensesItemSwiftData.self)
        
    }

