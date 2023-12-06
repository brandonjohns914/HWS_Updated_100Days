//
//  ProgrammaticNavigationWithNavigationStack.swift
//  Navigation
//
//  Created by Brandon Johns on 12/5/23.
//

import SwiftUI

struct ProgrammaticNavigationWithNavigationStack: View {
    @State private var path = [Int]()
    
    var body: some View {
        NavigationStack(path: $path) {
            VStack {
                Button("Show 32") {
                    path = [32]
                }
                Button("Show 64") {
                    path = [64]
                }
                
                Button("Show 32 then 64") {
                    path = [32,64]
                }
            }
            .navigationDestination(for: Int.self) { selection in
            Text("You selected \(selection)")
            }
        }
    }
}

#Preview {
    ProgrammaticNavigationWithNavigationStack()
}
