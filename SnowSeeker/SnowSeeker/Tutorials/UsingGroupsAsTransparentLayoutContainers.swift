//
//  UsingGroupsAsTransparentLayoutContainers.swift
//  SnowSeeker
//
//  Created by Brandon Johns on 4/2/24.
//

import SwiftUI

struct UserView: View {
    var body: some View {
        Group {
            Text("Name: Paul")
            Text("Country: England")
            Text("Pets: Luna and Arya")
        }
        .font(.title)
    }
}

struct UsingGroupsAsTransparentLayoutContainers: View {
    @Environment(\.horizontalSizeClass) var horizontalSizeClass

      var body: some View {
          if horizontalSizeClass == .compact {
              VStack {
                  UserView()
              }
          } else {
              HStack {
                  UserView()
              }
          }
      }
}

#Preview {
    UsingGroupsAsTransparentLayoutContainers()
}
