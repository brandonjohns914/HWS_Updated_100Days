//
//  BookwormApp.swift
//  Bookworm
//
//  Created by Brandon Johns on 12/10/23.
//

import SwiftUI
import SwiftData
@main
struct BookwormApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .modelContainer(for: Book.self)    
    }
}
