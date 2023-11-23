//
//  WhyModifierOrderMatters.swift
//  ViewsAndModifiers
//
//  Created by Brandon Johns on 11/22/23.
//

import SwiftUI

struct WhyModifierOrderMatters: View {
    var body: some View {
        VStack(spacing: 20) {
            Button("Hello, world!") { }
            .background(.red)
            .frame(width: 200, height: 200)
            
            Button("Hello, world!") { 
                print(type(of: self.body))
            }
            .background(.red)
            .frame(width: 200, height: 200)
        
            Text("Hello World!")
                .padding()
                .background(.red)
                .padding()
                .background(.blue)
                .padding()
                .background(.green)
                .padding()
                .background(.yellow)
        }
    }
}

#Preview {
    WhyModifierOrderMatters()
}
