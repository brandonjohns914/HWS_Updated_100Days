//
//  TriggeringEventsRepeatedlyUsingTimer.swift
//  Flashzilla
//
//  Created by Brandon Johns on 4/1/24.
//

import SwiftUI

struct TriggeringEventsRepeatedlyUsingTimer: View {
    let timer = Timer.publish(every: 1, tolerance: 0.5, on: .main, in: .common).autoconnect()
      @State private var counter = 0

      var body: some View {
          Text("Hello, World!")
              .onReceive(timer) { time in
                  if counter == 5 {
                      timer.upstream.connect().cancel()
                  } else {
                      print("The time is now \(time)")
                  }

                  counter += 1
              }
      }
}

#Preview {
    TriggeringEventsRepeatedlyUsingTimer()
}
