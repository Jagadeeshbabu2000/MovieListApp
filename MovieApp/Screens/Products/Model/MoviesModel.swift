//
//  MoviesModel.swift
//  MovieApp
//
//  Created by Jagadeesh K on 28/08/24.
//

import Foundation

struct MovieModel: Codable {
    let search: [Search]
    let totalResults, response: String

    enum CodingKeys: String, CodingKey {
        case search = "Search"
        case totalResults
        case response = "Response"
    }
}

struct Search: Codable {
    let title, year, imdbID: String
    let type: TypeEnum
    let poster: String

    enum CodingKeys: String, CodingKey {
        case title = "Title"
        case year = "Year"
        case imdbID
        case type = "Type"
        case poster = "Poster"
    }
}

enum TypeEnum: String, Codable {
    case movie = "movie"
}

