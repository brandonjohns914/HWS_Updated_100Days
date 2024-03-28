//
//  AddingCustomRowSwipeActionsToList.swift
//  HotProspects
//
//  Created by Brandon Johns on 3/28/24.
//

import SwiftUI

struct AddingCustomRowSwipeActionsToList: View {
    var body: some View {
        List {
            Text("Taylor Swift")
                .swipeActions {
                    Button("Delete", systemImage: "minus.circle", role: .destructive) {
                        print("Deleting")
                    }
                }
                .swipeActions(edge: .leading) {
                    Button("Pin", systemImage: "pin") {
                        print("Pinning")
                    }
                    .tint(.orange)
                }
        }
    }
}

#Preview {
    AddingCustomRowSwipeActionsToList()
}
