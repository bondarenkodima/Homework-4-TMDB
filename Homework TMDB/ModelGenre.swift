//
//  ModelGenre.swift
//  Homework TMDB
//
//  Created by MacBook Pro on 10.12.2022.
//

import Foundation

// MARK: - Welcome
struct WelcomeGenre: Codable {
    var genres: [Genre]
}

// MARK: - Genre
struct Genre: Codable {
    var id: Int
    var name: String
}

