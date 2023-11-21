//
//  StacksToArrangeViews.swift
//  GuessTheFlag
//
//  Created by Brandon Johns on 11/20/23.
//

import SwiftUI

struct StacksToArrangeViews: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            Spacer()
            Text("Hello, World!")
            Text("This is inside a stack")
        }
        
        VStack {
            Spacer()
            Text("First")
            Text("Second")
            Text("Third")
            Spacer()
           
        }
        
        ZStack {
            Text("Hello, World!")
            Text("This is inside a stack")
            Spacer()
        }
        Spacer()
    }
}

#Preview {
    StacksToArrangeViews()
}
