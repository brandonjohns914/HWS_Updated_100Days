//
//  Card.swift
//  Flashzilla
//
//  Created by Brandon Johns on 4/1/24.
//

import Foundation

struct Card: Codable, Equatable, Identifiable, Hashable {
    var id = UUID()
    let prompt: String
    let answer: String

    static let example = Card(prompt: "Who played the 13th Doctor in Doctor Who?", answer: "Jodie Whittaker")
}
