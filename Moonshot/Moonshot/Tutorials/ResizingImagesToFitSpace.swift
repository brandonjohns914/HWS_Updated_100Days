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
            .containerRelativeFrame(.horizontal) { size, axis in
                size * 0.8
                
            }
            
    }
}

#Preview {
    ResizingImagesToFitSpace()
}
