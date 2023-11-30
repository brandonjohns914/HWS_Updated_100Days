//
//  ResizingImagesToFitSpace.swift
//  Moonshot
//
//  Created by Brandon Johns on 11/30/23.
//

import SwiftUI

struct ResizingImagesToFitSpace: View {
    var body: some View {
        Image(.apollo1)
            .resizable()
            .scaledToFit()
            .frame(width: 300, height: 300)
            
    }
}

#Preview {
    ResizingImagesToFitSpace()
}
