//
//  ControllingAnimationStack.swift
//  Animations
//
//  Created by Brandon Johns on 11/28/23.
//

import SwiftUI

struct ControllingAnimationStack: View {
    @State private var enabled = false
    var body: some View {
        Button("Tap Me!") {
            enabled.toggle()
        }
        .background(enabled ? .blue : .red)
        .animation(.default, value: enabled)
            .frame(width: 200, height: 200)
            .foregroundStyle(.white)
            .clipShape(.rect(cornerRadius: enabled ? 60 : 0))
            .animation(.spring(duration: 1, bounce: 0.6) , value: enabled)
    }
}

#Preview {
    ControllingAnimationStack()
}
