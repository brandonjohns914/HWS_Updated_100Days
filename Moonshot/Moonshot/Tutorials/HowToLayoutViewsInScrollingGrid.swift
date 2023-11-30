//
//  HowToLayoutViewsInScrollingGrid.swift
//  Moonshot
//
//  Created by Brandon Johns on 11/30/23.
//

import SwiftUI

struct HowToLayoutViewsInScrollingGrid: View {
    let layout = [
        GridItem(.adaptive(minimum: 80, maximum: 120))
    ]
    
    var body: some View {
        ScrollView {
            LazyVGrid(columns: layout) {
                ForEach(0..<1000) {
                    Text("Item \($0)")
                }
            }
        }
    }
}

#Preview {
    HowToLayoutViewsInScrollingGrid()
}
