//
//  HowToLetUserShareContentWithShareLink.swift
//  InstaFilter
//
//  Created by Brandon Johns on 12/15/23.
//

import SwiftUI

struct HowToLetUserShareContentWithShareLink: View {
    var body: some View {
        VStack(spacing: 20) {
            ShareLink(item: URL(string: "https://www.hackingwithswift.com")!, subject: Text("Learn Swift here"), message: Text("Check out the 100 Days of SwiftUI!"))
                .padding()
            ShareLink(item: URL(string: "https://www.hackingwithswift.com")!) {
                Label("Spread the word about Swift", systemImage: "swift")
            }
            .padding()
                let example = Image(.ellie)
                
                ShareLink(item: example, preview: SharePreview("Ellie", image: example)) {
                    Label("Click to share", systemImage: "airplane")
                }
            }
        }
    }


#Preview {
    HowToLetUserShareContentWithShareLink()
}
