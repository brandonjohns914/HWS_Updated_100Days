//
//  HowPropertyWrappersBecomeStructs.swift
//  InstaFilter
//
//  Created by Brandon Johns on 12/14/23.
//

import SwiftUI

struct HowPropertyWrappersBecomeStructs: View {
    @State private var blurAmount = 0.0 {
        didSet {
            print("New Value is \(blurAmount)")
        }
    }
    var body: some View {
        VStack {
            Text("Hello, World!")
                .blur(radius: blurAmount)
            
            Slider(value: $blurAmount, in: 0...20)
            
            Button("Random Blur") {
                blurAmount = Double.random(in: 0...20)
            }
        }
    }
}

#Preview {
    HowPropertyWrappersBecomeStructs()
}
