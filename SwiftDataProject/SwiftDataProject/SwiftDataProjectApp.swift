//
//  SwiftDataProjectApp.swift
//  SwiftDataProject
//
//  Created by Brandon Johns on 12/11/23.
//

import SwiftUI

@main
struct SwiftDataProjectApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .modelContainer(for: User.self)
    }
}
