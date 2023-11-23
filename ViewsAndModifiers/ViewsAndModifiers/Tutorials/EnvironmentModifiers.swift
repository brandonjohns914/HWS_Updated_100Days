//
//  EnvironmentModifiers.swift
//  ViewsAndModifiers
//
//  Created by Brandon Johns on 11/22/23.
//

import SwiftUI

struct EnvironmentModifiers: View {
    var body: some View {
        VStack(spacing: 20) {
            VStack {
                Text("Gryffindor")
                Text("Hufflepuff")
                Text("Ravenclaw")
                Text("Slytherin")
            }
            .font(.title)
            VStack {
                Text("Gryffindor")
                    .font(.largeTitle)
                Text("Hufflepuff")
                Text("Ravenclaw")
                Text("Slytherin")
            }
            .font(.title)
            
            VStack {
                Text("Gryffindor")
                    .blur(radius: 0)
                Text("Hufflepuff")
                Text("Ravenclaw")
                Text("Slytherin")
            }
            .blur(radius: 5)
        }
    }
}

#Preview {
    EnvironmentModifiers()
}
