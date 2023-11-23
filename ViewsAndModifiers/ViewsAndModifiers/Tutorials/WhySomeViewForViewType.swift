//
//  WhySomeViewForViewType.swift
//  ViewsAndModifiers
//
//  Created by Brandon Johns on 11/22/23.
//

import SwiftUI

struct WhySomeViewForViewType: View {
    var body: some View {
        Button("Hello World") {
            print(type(of: self.body))
        }
        .frame(width: 200, height: 200)
        .background(.red)
    }
}

#Preview {
    WhySomeViewForViewType()
}
