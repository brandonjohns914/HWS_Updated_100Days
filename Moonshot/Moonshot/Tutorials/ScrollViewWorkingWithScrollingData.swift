//
//  ScrollViewWorkingWithScrollingData.swift
//  Moonshot
//
//  Created by Brandon Johns on 11/30/23.
//

import SwiftUI
struct CustomText: View {
    let text: String
    
    var body: some View {
        Text(text)
    }
    
    init(_ text: String) {
        print("Creating a new CustomText")
        self.text = text
    }
}

struct ScrollViewWorkingWithScrollingData: View {
    var body: some View {
        ScrollView(.horizontal) {
            LazyHStack(spacing: 10){
                ForEach(0..<100) {
                    CustomText("Item \($0)")
                        .font(.title)
                }
            }
        }
        .frame(maxWidth: .infinity)
    }
}

#Preview {
    ScrollViewWorkingWithScrollingData()
}
