//
//  CreatingImplicitAnimations.swift
//  Animations
//
//  Created by Brandon Johns on 11/27/23.
//

import SwiftUI

struct CreatingImplicitAnimations: View {
    @State private var animationAmount = 1.0
    var body: some View {
        Button( "Tap me") {
            animationAmount += 1 
        }
            .padding(50)
            .background(.red)
            .foregroundStyle(.white)
            .clipShape(.circle)
            .scaleEffect(animationAmount)
            .animation(.default, value: animationAmount)
            .blur(radius: (animationAmount - 1) * 3)
    }
}

#Preview {
    CreatingImplicitAnimations()
}
