//
//  WorkingWithStrings.swift
//  WordScramble
//
//  Created by Brandon Johns on 11/27/23.
//

import SwiftUI

struct WorkingWithStrings: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
    
    func testStrings() {
        let input = "A B C"
        let letters = input.components(separatedBy: " ")
        
        let inputMulti = """
            A
            B
            C
            """
        
        let multiLetters = inputMulti.components(separatedBy: "\n")
        
        let letter = multiLetters.randomElement() // returns optional
        
        let trimmed = letter?.trimmingCharacters(in: .whitespacesAndNewlines)
        print(letters)
        print(trimmed as Any)
    }
    
    func testChecker() {
        let word = "swift"
        let checker = UITextChecker()
        
        let range = NSRange(location: 0, length: word.utf16.count)
        let misspelledRange = checker.rangeOfMisspelledWord(in: word, range: range, startingAt: 0, wrap: false, language: "en")
        
        let allGood = misspelledRange.location == NSNotFound 
        print(allGood)
    }
}

#Preview {
    WorkingWithStrings()
}
