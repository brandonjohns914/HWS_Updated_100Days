//
//  LoadingImageFromRemoteServer.swift
//  CupCakeCorner
//
//  Created by Brandon Johns on 12/7/23.
//

import SwiftUI

struct LoadingImageFromRemoteServer: View {
    var body: some View {
        AsyncImage(url: URL(string: "https://hws.dev/img/bad.png")) { phase in
            if let image = phase.image {
                image
                    .resizable()
                    .scaledToFit()
            } else if phase.error != nil {
                Text("There was an error loading the image.")
            } else {
                ProgressView()
            }
        }
        .frame(width: 200, height: 200)
    }
}

#Preview {
    LoadingImageFromRemoteServer()
}
