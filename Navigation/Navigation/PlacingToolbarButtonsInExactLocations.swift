//
//  PlacingToolbarButtonsInExactLocations.swift
//  Navigation
//
//  Created by Brandon Johns on 12/6/23.
//

import SwiftUI

struct PlacingToolbarButtonsInExactLocations: View {
    var body: some View {
        NavigationStack {
            Text("Hello, World!")
                .toolbar {
                    ToolbarItem(placement: .topBarLeading){
                        Button("Tap me!") {
                            // action
                        }
                    }
                    
                    ToolbarItem(placement: .topBarLeading){
                        Button("Or Tap me!") {
                            //action
                        }
                    }
                    
                    ToolbarItemGroup(placement: .topBarTrailing) {
                        Button("Tap me!") {
                            //action
                        }
                        
                        Button("Tap me 2!") {
                            //action 
                        }
                    }
                }
        }
    }
}

#Preview {
    PlacingToolbarButtonsInExactLocations()
}
