//
//  DisablingUserInteractionWithAllowsHitTesting.swift
//  Flashzilla
//
//  Created by Brandon Johns on 4/1/24.
//

import SwiftUI

struct DisablingUserInteractionWithAllowsHitTesting: View {
    var body: some View {
        VStack {
            Text("Hello")
            Spacer().frame(height: 100)
            Text("World")
        }
        .contentShape(.rect)
        .onTapGesture {
            print("VStack tapped!")
        }
    }
}

#Preview {
    DisablingUserInteractionWithAllowsHitTesting()
}
