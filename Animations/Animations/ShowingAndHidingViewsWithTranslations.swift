//
//  ShowingAndHidingViewsWithTranslations.swift
//  Animations
//
//  Created by Brandon Johns on 11/28/23.
//

import SwiftUI

struct ShowingAndHidingViewsWithTranslations: View {
    @State private var isShowingRed = false
    var body: some View {
        VStack {
            Button("Tap Me!") {
                withAnimation {
                    isShowingRed.toggle()
                }
            }
            if isShowingRed {
                Rectangle()
                    .fill(.red)
                    .frame(width: 200, height: 200)
                    .transition(.asymmetric(insertion: .scale, removal: .opacity))
            }
        }
    }
}

#Preview {
    ShowingAndHidingViewsWithTranslations()
}
