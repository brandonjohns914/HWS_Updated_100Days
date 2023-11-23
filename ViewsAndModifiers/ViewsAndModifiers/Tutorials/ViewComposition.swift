//
//  ViewComposition.swift
//  ViewsAndModifiers
//
//  Created by Brandon Johns on 11/22/23.
//

import SwiftUI

struct CapsuleText: View {
    var text: String
    
    var body: some View {
        Text(text)
            .font(.largeTitle)
            .padding()
            .foregroundStyle(.white)
            .background(.blue)
            .clipShape(.capsule)
    }
}

struct ViewComposition: View {
    var body: some View {
        VStack(spacing: 10) {
            Text("First")
                .font(.largeTitle)
                .padding()
                .foregroundStyle(.white)
                .background(.blue)
                .clipShape(.capsule)
            
            Text("Second")
                .font(.largeTitle)
                .padding()
                .foregroundStyle(.white)
                .background(.blue)
                .clipShape(.capsule)
            
            CapsuleText(text: "Third")
            CapsuleText(text: "Fourth")
        }
    }
}

#Preview {
    ViewComposition()
}
