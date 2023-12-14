//
//  RespondingToStateChangesUsingOnChange.swift
//  InstaFilter
//
//  Created by Brandon Johns on 12/14/23.
//

import SwiftUI

struct RespondingToStateChangesUsingOnChange: View {
    @State private var blurAmount: CGFloat = 0.0 {
            didSet {
                print("New value is \(blurAmount)")
            }
        }

        var body: some View {
            VStack {
                Text("Hello, World!")
                    .blur(radius: blurAmount)

                Slider(value: $blurAmount, in: 0...20)
                    .onChange(of: blurAmount) { oldValue, newValue in
                        print("new value is \(newValue)")
                    }
            }
        }
}

#Preview {
    RespondingToStateChangesUsingOnChange()
}
