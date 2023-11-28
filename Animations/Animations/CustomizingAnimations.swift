//
//  CustomizingAnimations.swift
//  Animations
//
//  Created by Brandon Johns on 11/27/23.
//

import SwiftUI

struct CustomizingAnimations: View {
    @State private var animationAmount = 1.0
    @State private var animationAmount1 = 1.0
    @State private var animationAmount2 = 1.0
    @State private var animationAmount3 = 1.0
    var body: some View {
        VStack {
            
            
            Button("Tap me!") {
                animationAmount += 1
            }
            .padding(50)
            .background(.red)
            .foregroundStyle(.white)
            .clipShape(.circle)
            .scaleEffect(animationAmount)
            .animation(
                .easeInOut(duration: 2)
                .delay(1),
                value: animationAmount
            )
            
            Button("Tap me!") {
                animationAmount1 += 1
            }
            .padding(50)
            .background(.blue)
            .foregroundStyle(.white)
            .clipShape(.circle)
            .scaleEffect(animationAmount1)
            .animation(
                .easeInOut(duration: 2)
                .repeatCount(3, autoreverses: true),
                value: animationAmount1
            )
            
            Button("Tap me!") {
                animationAmount2 += 1
            }
            .padding(50)
            .background(.green)
            .foregroundStyle(.white)
            .clipShape(.circle)
            .scaleEffect(animationAmount2)
            .animation(
                .easeInOut(duration: 2)
                .repeatForever( autoreverses: true),
                value: animationAmount2
            )
            
            Button("Tap me!") {
                animationAmount3 += 1
            }
            .padding(50)
            .background(.purple)
            .foregroundStyle(.white)
            .clipShape(.circle)
            .overlay(
            Circle()
                .stroke(.purple)
                .scaleEffect(animationAmount3)
                .opacity(2 - animationAmount3)
                .animation(.easeInOut(duration: 1)
                    .repeatForever(autoreverses: false),
                                   value: animationAmount3 )
            
            )
            .onAppear {
                animationAmount3 = 2
            }
        }
    }
}

#Preview {
    CustomizingAnimations()
}
