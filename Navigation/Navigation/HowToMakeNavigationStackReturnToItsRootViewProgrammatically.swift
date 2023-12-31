//
//  HowToMakeNavigationStackReturnToItsRootViewProgrammatically.swift
//  Navigation
//
//  Created by Brandon Johns on 12/5/23.
//

import SwiftUI

struct DetailViewss: View {
    var number: Int
    @Binding var path: NavigationPath
    var body: some View {
        NavigationLink("Go to Random Number", value: Int.random(in: 1...1000))
            .navigationTitle("Number: \(number)")
            .toolbar {
                Button("Home") {
                    path = NavigationPath()
                }
            }
    }
}

struct HowToMakeNavigationStackReturnToItsRootViewProgrammatically: View {
    @State private var path = NavigationPath()
    var body: some View {
        NavigationStack(path: $path){
            DetailViewss(number: 0, path: $path)
                .navigationDestination(for: Int.self) { i in
                    DetailViewss(number: i, path: $path)
                }
        }
    }
}

#Preview {
    HowToMakeNavigationStackReturnToItsRootViewProgrammatically()
}
