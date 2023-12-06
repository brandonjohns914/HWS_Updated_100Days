//
//  HandlingNavigationWithNavigationDestination.swift
//  Navigation
//
//  Created by Brandon Johns on 12/5/23.
//

import SwiftUI

struct HandlingNavigationWithNavigationDestination: View {
    var body: some View {
        NavigationStack {
            List(0..<100) { i in
                NavigationLink("Select \(i)", value: i)
                
                
            }
            .navigationDestination(for: Int.self) { selection in
            Text("you selected \(selection)")}
        }
    }
}

#Preview {
    HandlingNavigationWithNavigationDestination()
}
