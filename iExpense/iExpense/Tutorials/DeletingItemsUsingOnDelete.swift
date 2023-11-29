//
//  DeletingItemsUsingOnDelete.swift
//  iExpense
//
//  Created by Brandon Johns on 11/28/23.
//

import SwiftUI

struct DeletingItemsUsingOnDelete: View {
    @State private var numbers = [Int]()
    @State private var currentNumber = 1
    var body: some View {
        NavigationStack {
            VStack {
                List {
                    ForEach(numbers, id: \.self) {
                        Text("Row \($0)")
                    }
                    .onDelete(perform: removeRows)
                }
                Button("Add Number") {
                    numbers.append(currentNumber)
                    currentNumber += 1
                }
            }
            .toolbar {
                EditButton()
            }
        }
    }
    
    func removeRows(at offsets: IndexSet) {
        numbers.remove(atOffsets:  offsets)
    }
}

#Preview {
    DeletingItemsUsingOnDelete()
}
