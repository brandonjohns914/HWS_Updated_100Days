//
//  ContentView.swift
//  SnowSeeker
//
//  Created by Brandon Johns on 4/2/24.
//

import SwiftUI

struct ContentView: View {
    
    enum SortType {
        case `default`, alphabetical, country
    }
    
    @State private var searchText = ""
    @State private var sortType = SortType.default
    @State private var showingSortOptions = false
    
    let resorts: [Resort] = Bundle.main.decode("resorts.json")
    
    var filteredResorts: [Resort] {
        if searchText.isEmpty {
           resorts
        } else {
            resorts.filter { $0.name.localizedStandardContains(searchText) }
        }
    }
    
    var sortedResorts: [Resort] {
        switch sortType {
        case .default:
            filteredResorts
        case .alphabetical:
            filteredResorts.sorted { $0.name < $1.name }
        case .country:
            filteredResorts.sorted { $0.country < $1.country }
        }
    }

    @State private var favorites = Favorites()
    
    var body: some View {
        NavigationSplitView {
            List(sortedResorts){ resort in
                NavigationLink(value: resort) {
                    HStack {
                        Image(resort.country)
                            .resizable()
                            .scaledToFit()
                            .frame(width: 40, height: 25)
                            .clipShape(.rect(cornerRadius: 5))
                            .overlay(
                                RoundedRectangle(cornerRadius: 5)
                                    .stroke(.black, lineWidth: 1)
                            )
                        
                        VStack(alignment: .leading) {
                            Text(resort.name)
                                .font(.headline)
                            Text("\(resort.runs) runs")
                                .foregroundStyle(.secondary)
                        }
                        
                        if favorites.contains(resort) {
                            Spacer()
                            Image(systemName: "heart.fill")
                            .accessibilityLabel("This is a favorite resort")
                                .foregroundStyle(.red)
                        }

                    }
                }
            }
            .navigationTitle("Resorts")
            .navigationDestination(for: Resort.self) { resort in
                ResortView(resort: resort)
            }
            .searchable(text: $searchText, prompt: "Search for a resort")
         
        } detail: {
                WelcomeView()
        }
        .environment(favorites)
        .toolbar {
            Button("Change sort order", systemImage: "arrow.up.arrow.down") {
                showingSortOptions = true
            }
        }
        .confirmationDialog("Sort order", isPresented: $showingSortOptions) {
            Button("Default") { sortType = .default }
            Button("Alphabetical") { sortType = .alphabetical }
            Button("By Country") { sortType = .country }
        }
    }
}

#Preview {
    ContentView()
}
