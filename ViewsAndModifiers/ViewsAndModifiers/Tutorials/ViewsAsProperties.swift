//
//  ViewsAsProperties.swift
//  ViewsAndModifiers
//
//  Created by Brandon Johns on 11/22/23.
//

import SwiftUI

struct ViewsAsProperties: View {
    let motto1 = Text("Draco dormiens")
    let motto2 = Text("nunquam titillandus")
    var motto: some View {
        Text("Draco dormiens")
    }
    
    var spells: some View {
        VStack {
            Text("Lumos")
            Text("Obliviate")
        }
    }
    @ViewBuilder var spell: some View {
        Text("Lumos")
        Text("Obliviate")
    }
    var body: some View {
        VStack {
            motto1
                .foregroundStyle(.red)
            motto2
                .foregroundStyle(.blue)
            
            motto
                .foregroundStyle(.purple)
            
            spells
                .foregroundStyle(.green)
            
        }
    }
}

#Preview {
    ViewsAsProperties()
}
