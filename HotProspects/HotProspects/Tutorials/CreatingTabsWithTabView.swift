//
//  CreatingTabsWithTabView.swift
//  HotProspects
//
//  Created by Brandon Johns on 3/28/24.
//

import SwiftUI

struct CreatingTabsWithTabView: View {
    @State private var selectedTab = "One"
   
       

           var body: some View {
               TabView(selection: $selectedTab) {
                   Button("Show Tab 2") {
                       selectedTab = "Two"
                   }
                   .tabItem {
                       Label("One", systemImage: "star")
                   }
                   .tag("One")

                   Text("Tab 2")
                       .tabItem {
                           Label("Two", systemImage: "circle")
                       }
                       .tag("Two")
               }
           }
    
}

#Preview {
    CreatingTabsWithTabView()
}
