//
//  HowToSaveNavigationStackPathsUsingCodable.swift
//  Navigation
//
//  Created by Brandon Johns on 12/5/23.
//

import SwiftUI

@Observable
class PathStore {
    var path: [Int] {
        didSet {
            save()
        }
    }
    private let savePath = URL.documentsDirectory.appending(path: "SavedPath")
    
    init() {
        if let data = try? Data(contentsOf: savePath) {
            if let decoded = try? JSONDecoder().decode([Int].self, from: data) {
                path = decoded
                return
            }
        }
        
        // start empty path
        
        path = []
    }
    
    func save() {
        do {
            let data = try JSONEncoder().encode(path)
            try data.write(to: savePath)
        } catch {
            print("Failed tos ave navigation data ")
        }
    }
}

@Observable
class PathNavigationStore {
    var path: NavigationPath {
            didSet {
                save()
            }
        }

        private let savePath = URL.documentsDirectory.appending(path: "SavedPath")

        init() {
            if let data = try? Data(contentsOf: savePath) {
                if let decoded = try? JSONDecoder().decode(NavigationPath.CodableRepresentation.self, from: data) {
                    path = NavigationPath(decoded)
                    return
                }
            }

            // Still here? Start with an empty path.
            path = NavigationPath()
        }

        func save() {
            guard let representation = path.codable else { return }

            do {
                let data = try JSONEncoder().encode(representation)
                try data.write(to: savePath)
            } catch {
                print("Failed to save navigation data")
            }
        }
}

struct DetailView: View {
    var number: Int
    
    var body: some View {
        NavigationLink("Go to Random Number", value: Int.random(in: 1...1000))
            .navigationTitle("Number: \(number)")
    }
}

struct HowToSaveNavigationStackPathsUsingCodable: View {
    @State private var pathStore = PathStore()
    var body: some View {
        NavigationStack(path: $pathStore.path) {
            DetailView(number: 0)
                .navigationDestination(for: Int.self) { i in
                    DetailView(number: i )}
        }
    }
}

#Preview {
    HowToSaveNavigationStackPathsUsingCodable()
}
