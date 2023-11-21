//
//  ColorAndFrame.swift
//  GuessTheFlag
//
//  Created by Brandon Johns on 11/20/23.
//

import SwiftUI

struct ColorAndFrame: View {
    var body: some View {
        ZStack {
            Color.blue
                .frame(minWidth: 200, maxWidth: .infinity,  minHeight: 200, maxHeight: .infinity)
            Text("Your content")
                .background(.red)
        }
        
        ZStack {
            VStack(spacing: 0) {
                Color.green
                Color.yellow
            }
            Text("Your Content")
                .foregroundStyle(.secondary)
                .padding(50)
                .background(.ultraThinMaterial)
            }
        .ignoresSafeArea()
    }
}

#Preview {
    ColorAndFrame()
}
