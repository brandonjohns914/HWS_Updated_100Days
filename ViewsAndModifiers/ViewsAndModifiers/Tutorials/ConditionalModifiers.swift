//
//  ConditionalModifiers.swift
//  ViewsAndModifiers
//
//  Created by Brandon Johns on 11/22/23.
//

import SwiftUI

struct ConditionalModifiers: View {
    @State private var useRedText = false
    
    var body: some View {
        Button("Hello World") {
            useRedText.toggle()
        }
        .foregroundStyle(useRedText ? .red : .blue)
    }
}

#Preview {
    ConditionalModifiers()
}
