//
//  CreatingExplicitAnimation.swift
//  Animations
//
//  Created by Brandon Johns on 11/27/23.
//

import SwiftUI

struct CreatingExplicitAnimation: View {
    @State private var animationAmount = 0.0
    var body: some View {
        Button("Tap me!") { withAnimation(.spring(duration: 1, bounce: 0.5)) {
            animationAmount += 360
        }
        }
            .padding(50)
            .background(.red)
            .foregroundStyle(.white)
            .clipShape(.circle)
            .rotation3DEffect(
                .degrees(animationAmount),
                axis: (x: 0, y: 1, z: 0))
        
       
    }
}

#Preview {
    CreatingExplicitAnimation()
}
