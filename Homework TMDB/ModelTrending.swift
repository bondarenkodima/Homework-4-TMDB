//
//  Models.swift
//  Homework TMDB
//
//  Created by MacBook Pro on 10.12.2022.
//
import Foundation

// MARK: - Welcome
struct WelcomeTreading: Codable {
    var page: Int
    var results: [Result]
    var totalPages, totalResults: Int

    enum CodingKeys: String, CodingKey {
        case page, results
        case totalPages = "total_pages"
        case totalResults = "total_results"
    }
}

// MARK: - Result
struct Result: Codable {
    var adult: Bool
    var backdropPath: String
    var id: Int
    var title: String
    var originalLanguage: String
    var originalTitle, overview, posterPath: String
    var mediaType: String
    var genreIDS: [Int]
    var popularity: Double
    var releaseDate: String
    var video: Bool
    var voteAverage: Double
    var voteCount: Int

    enum CodingKeys: String, CodingKey {
        case adult
        case backdropPath = "backdrop_path"
        case id, title
        case originalLanguage = "original_language"
        case originalTitle = "original_title"
        case overview
        case posterPath = "poster_path"
        case mediaType = "media_type"
        case genreIDS = "genre_ids"
        case popularity
        case releaseDate = "release_date"
        case video
        case voteAverage = "vote_average"
        case voteCount = "vote_count"
    }
}

enum MediaType: String, Codable {
    case movie = "movie"
}

enum OriginalLanguage: String, Codable {
    case en = "en"
    case it = "it"
    case no = "no"
    case zh = "zh"
}
