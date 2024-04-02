//
//  SharingATObservableObjectsThroughSwiftUIsEnvironment.swift
//  SnowSeeker
//
//  Created by Brandon Johns on 4/2/24.
//

import SwiftUI
@Observable
class Player {
    var name = "Anonymous"
    var highScore = 0
}

struct HighScoreView: View {
    @Environment(Player.self) var player

    var body: some View {
        Text("Your high score: \(player.highScore)")
    }
}


struct SharingATObservableObjectsThroughSwiftUIsEnvironment: View {
    @State private var player = Player()
    
      var body: some View {
          VStack {
              Text("Welcome!")
              HighScoreView()
          }
          .environment(player)
      }
}

#Preview {
    SharingATObservableObjectsThroughSwiftUIsEnvironment()
}
