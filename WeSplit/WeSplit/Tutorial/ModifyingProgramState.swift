//
//  ModifyingProgramState.swift
//  WeSplit
//
//  Created by Brandon Johns on 11/17/23.
//

import SwiftUI

struct ModifyingProgramState: View {
  @State private var tapCount = 0
    
    var body: some View {
        Button("Tap Count: \(tapCount)") {
            tapCount += 1
        }
    }
}

#Preview {
    ModifyingProgramState()
}
