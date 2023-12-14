//
//  IntegratingCoreImageWithSwiftUI.swift
//  InstaFilter
//
//  Created by Brandon Johns on 12/14/23.
//

import CoreImage
import SwiftUI

struct IntegratingCoreImageWithSwiftUI: View {
    @State private var image: Image?
    
    var body: some View {
        VStack {
            image?
                .resizable()
                .scaledToFit()
        }
        .onAppear(perform: loadImage)
    }
    
    func loadImage() {
        image = Image(.example)
    }
}

#Preview {
    IntegratingCoreImageWithSwiftUI()
}
