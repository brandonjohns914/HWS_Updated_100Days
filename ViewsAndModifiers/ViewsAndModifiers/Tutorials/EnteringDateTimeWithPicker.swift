//
//  EnteringDateTimeWithPicker.swift
//  ViewsAndModifiers
//
//  Created by Brandon Johns on 11/22/23.
//

import SwiftUI



struct EnteringDateTimeWithPicker: View {
    @State private var wakeUp = Date.now
    
   
    var body: some View {
        DatePicker("Please enter a date", selection: $wakeUp)
        
        DatePicker("Please enter a date", selection: $wakeUp)
            .labelsHidden()
        DatePicker("Please enter a time", selection: $wakeUp, displayedComponents: .hourAndMinute)
            //.labelsHidden()
     
       
    
    }
}

#Preview {
    EnteringDateTimeWithPicker()
}
