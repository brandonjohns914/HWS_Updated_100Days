//
//  WritingDataToDocumentsDirectory.swift
//  BucketList
//
//  Created by Brandon Johns on 3/26/24.
//

import SwiftUI

struct WritingDataToDocumentsDirectory: View {
    var body: some View {
        Button("Read and Write") {
            let data = Data("Test Message".utf8)
            let url = URL.documentsDirectory.appending(path: "message.txt")
            
            do {
                try data.write(to: url, options:[.atomic, .completeFileProtection])
                
                let input = try String(contentsOf: url)
                print(input)
            } catch {
                print(error.localizedDescription)
            }
        }
    }
}

#Preview {
    WritingDataToDocumentsDirectory()
}
