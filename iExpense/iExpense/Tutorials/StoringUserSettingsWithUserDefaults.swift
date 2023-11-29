//
//  StoringUserSettingsWithUserDefaults.swift
//  iExpense
//
//  Created by Brandon Johns on 11/28/23.
//

import SwiftUI

struct StoringUserSettingsWithUserDefaults: View {
    //@State private var tapCount = UserDefaults.standard.integer(forKey: "Tap")
    @AppStorage("tapCount") private var tapCount = 0
    var body: some View {
        Button("Tap count: \(tapCount)") {
            tapCount += 1
            //UserDefaults.standard.set(tapCount, forKey: "Tap")
        }
    }
}

#Preview {
    StoringUserSettingsWithUserDefaults()
}
