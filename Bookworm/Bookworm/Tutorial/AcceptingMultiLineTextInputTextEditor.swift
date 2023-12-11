//
//  AcceptingMultiLineTextInputTextEditor.swift
//  Bookworm
//
//  Created by Brandon Johns on 12/11/23.
//

import SwiftUI

struct AcceptingMultiLineTextInputTextEditor: View {
    
    @AppStorage("notes") private var notes = ""
    @AppStorage("notes1") private var notes1 = ""
    
    var body: some View {
        NavigationStack {
            VStack {
                Form {
                    TextEditor(text: $notes)
                        .padding()
                }
                
                 
                Form {
                    TextField("Enter your Text", text: $notes1, axis: .vertical)
                        .textFieldStyle(.roundedBorder)
                        .padding()
                }
                
            }
            .navigationTitle("notes")
        }
    }
}

#Preview {
    AcceptingMultiLineTextInputTextEditor()
}
