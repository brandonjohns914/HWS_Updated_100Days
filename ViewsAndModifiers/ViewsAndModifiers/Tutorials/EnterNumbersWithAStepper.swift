//
//  EnterNumbersWithAStepper.swift
//  ViewsAndModifiers
//
//  Created by Brandon Johns on 11/22/23.
//

import SwiftUI


struct EnterNumbersWithAStepper: View {
    @State private var amount = 0.0

    var body: some View {
        Stepper("\(amount.formatted())", value: $amount, in: 2...24, step: 0.5)
    }
}

#Preview {
    EnterNumbersWithAStepper()
}
