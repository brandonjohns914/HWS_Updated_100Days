//
//  RectangleSpacingView.swift
//  Moonshot
//
//  Created by Brandon Johns on 12/4/23.
//

import SwiftUI

struct RectangleSpacingView: View {
    var body: some View {
        Rectangle()
            .frame(height: 2)
            .foregroundStyle(.lightBackground)
            .padding(.vertical)
    }
}

#Preview {
    RectangleSpacingView()
}
