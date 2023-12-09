//
//  AddressView.swift
//  CupCakeCorner
//
//  Created by Brandon Johns on 12/7/23.
//

import SwiftUI

struct AddressView: View {
   @Bindable var order: Order
  
    
    var body: some View {
        Form {
            Section {
                TextField("Name", text: $order.name)
                TextField("Street Address", text: $order.streetAddress)
                TextField("City", text: $order.city)
                TextField("Zip", text: $order.zip)
                
            }
            Section {
                NavigationLink("Check out") {
                    Checkout(order: order)
                }
            }
            .disabled(order.hasValidAddress == false )
        }
        .navigationTitle("Delivery Details")
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    AddressView(order: Order())
}
