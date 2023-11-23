//
//  CustomModifiers.swift
//  ViewsAndModifiers
//
//  Created by Brandon Johns on 11/22/23.
//

import SwiftUI

struct Title: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.largeTitle)
            .foregroundStyle(.white)
            .padding()
            .background(.blue)
            .clipShape(.rect(cornerRadius: 10))
    }
}

extension View {
    func titleStyle() -> some View {
        modifier(Title())
    }
    
    func watermarked(with text: String) -> some View {
        modifier(Watermark(text: text))
    }
}


struct Watermark: ViewModifier {
    var text: String
    
    func body(content: Content) -> some View {
        ZStack(alignment: .bottomTrailing) {
            Text(text)
                .font(.caption)
                .foregroundStyle(.white)
                .padding(5)
                .background(.black)
        }
    }
}

struct CustomModifiers: View {
    var body: some View {
        Text("Hello, Modifier!")
            .modifier(Title())
        
        Text("Hello, Extension!")
            .titleStyle()
        
        Color.blue
            .frame(width: 300, height: 200)
            .watermarked(with: "Hacking with swift")
    }
}

#Preview {
    CustomModifiers()
}
