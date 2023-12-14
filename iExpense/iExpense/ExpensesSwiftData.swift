//
//  ExpensesSwiftData.swift
//  iExpense
//
//  Created by Brandon Johns on 12/13/23.
//

import SwiftData

@Model
class ExpensesItemSwiftData {
    let name: String
    let type: String
    let amount: Double
    
    init(name: String, type: String, amount: Double) {
        self.name = name
        self.type = type
        self.amount = amount
    }
}
