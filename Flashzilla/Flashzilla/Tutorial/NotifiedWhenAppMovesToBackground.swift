//
//  NotifiedWhenAppMovesToBackground.swift
//  Flashzilla
//
//  Created by Brandon Johns on 4/1/24.
//

import SwiftUI

struct NotifiedWhenAppMovesToBackground: View {
    @Environment(\.scenePhase) var scenePhase

       var body: some View {
           Text("Hello, world!")
               .onChange(of: scenePhase) { oldPhase, newPhase in
                   if newPhase == .active {
                       print("Active")
                   } else if newPhase == .inactive {
                       print("Inactive")
                   } else if newPhase == .background {
                       print("Background")
                   }
               }
       }
}

#Preview {
    NotifiedWhenAppMovesToBackground()
}
