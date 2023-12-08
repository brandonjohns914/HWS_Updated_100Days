//
//  Order.swift
//  CupCakeCorner
//
//  Created by Brandon Johns on 12/7/23.
//

import SwiftUI

@Observable
class Order {
    static let types = ["Vanilla", "Strawberry", "Chocolate", "Rainbow"]
    
    var type = 0
    var quantity = 3
    
    var specialRequestEnabled = false {
        didSet {
            if specialRequestEnabled == false {
                extraFrosting = false
                addSprinkles = false 
            }
        }
    }
    var extraFrosting = false
    var addSprinkles = false 
}
