//
//  Book.swift
//  Bookworm
//
//  Created by Brandon Johns on 12/11/23.
//

import SwiftData
import SwiftUI


@Model
class Book {
    var title: String
    var author: String
    var genre: String
    var review: String
    var rating: Int
    
    init(title: String, author: String, genre: String, review: String, rating: Int) {
        self.title = title
        self.author = author
        self.genre = genre
        self.review = review
        self.rating = rating
    }
    
}
