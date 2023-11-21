//
//  ButtonsandImages.swift
//  GuessTheFlag
//
//  Created by Brandon Johns on 11/20/23.
//

import SwiftUI

struct ButtonsandImages: View {
    var body: some View {
        VStack {
            Button("Delete Selection", role: .destructive ,action: executeDelete)
            VStack {
                Button("Button 1") {}
                    .buttonStyle(.bordered)
                Button("Button 2", role: .destructive) {}
                    .buttonStyle(.bordered)
                Button("Button 3") {}
                    .buttonStyle(.borderedProminent)
                    .tint(.mint)
                Button("Button 4", role: .destructive) {}
                    .buttonStyle(.borderedProminent)
            }
            
            Button {
                print("Button was tapped")
            } label: {
                Text("Tap me!")
                    .padding()
                    .foregroundStyle(.white)
                    .background(.red)
            }
            
            VStack(spacing: 20) {
                Button {
                    print("Edit button was tapped")
                } label: {
                    Image(systemName: "pencil")
                }
             
                
                Button("Edit", systemImage: "pencil")
                {
                    print("edit button was tapped ")
                }
                
                Button {
                    print("Edit button was tapped")
                } label: {
                    Label("Edit", systemImage: "pencil")
                    .padding()
                    .foregroundStyle(.white)
                    .background(.red)
                }
            }
            
        }
    }
    
    func executeDelete() {
        print("Now Deleting")
    }
}

#Preview {
    ButtonsandImages()
}
