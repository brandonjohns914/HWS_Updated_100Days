//
//  SupportingSpecificAccessibilityNeeds.swift
//  Flashzilla
//
//  Created by Brandon Johns on 4/1/24.
//

import SwiftUI

struct SupportingSpecificAccessibilityNeeds: View {
    @Environment(\.accessibilityReduceMotion) var reduceMotion
       @State private var scale = 1.0

       var body: some View {
           Button("Hello, World!") {
               if reduceMotion {
                   scale *= 1.5
               } else {
                   withAnimation {
                       scale *= 1.5
                   }
               }

           }
           .scaleEffect(scale)
       }
}

#Preview {
    SupportingSpecificAccessibilityNeeds()
}
