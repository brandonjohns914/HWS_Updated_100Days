//
//  Gradients.swift
//  GuessTheFlag
//
//  Created by Brandon Johns on 11/20/23.
//

import SwiftUI

struct Gradients: View {
    var body: some View {
        VStack(spacing: 30) {
            LinearGradient(colors: [.white, .black], startPoint: .top, endPoint: .bottom)
            
            LinearGradient(stops: [
                Gradient.Stop(color: .white, location: 0.45),
                Gradient.Stop(color: .black, location: 0.55),
            ], startPoint: .top, endPoint: .bottom)
            
            RadialGradient(colors: [.blue, .black], center: .center, startRadius: 20, endRadius: 200)
            
            AngularGradient(colors: [.red, .yellow, .green, .blue, .purple, .red], center: .center)
         
            Text("Your content")
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .foregroundStyle(.white)
                .background(.red.gradient)
        }
    }
}

#Preview {
    Gradients()
}
