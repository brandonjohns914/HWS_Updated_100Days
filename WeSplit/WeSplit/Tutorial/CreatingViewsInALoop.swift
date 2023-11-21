//
//  CreatingViewsInALoop.swift
//  WeSplit
//
//  Created by Brandon Johns on 11/17/23.
//

import SwiftUI


struct CreatingViewsInALoop: View {
    let students = ["Harry", "Hermione", "Ron"]
    @State private var selectedStudent = "Harry"
    
    var body: some View {
        NavigationStack {
            Form {
                Picker("Select your student", selection: $selectedStudent) {
                    ForEach(students, id: \.self) {
                        Text($0)
                    }
                }
            }
        }
    }
}

#Preview {
    CreatingViewsInALoop()
}
