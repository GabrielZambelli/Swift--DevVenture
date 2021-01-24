//
//  Movie.swift
//  MoviesLib
//
//  Created by Eric Alves Brito on 22/05/20.
//  Copyright © 2020 DevVenture. All rights reserved.
//

import Foundation

struct Movie: Decodable {
    
    let title: String
    var categories: String?
    let duration: String
    let rating: Double
    var summary: String?
    let image: String
    
    var smallImage: String {
        return image + "small"
    }
    
    var ratingFormatted: String {
        return "⭐️ \(rating)/10.0"
    }
    
    enum CodingKeys: String, CodingKey {
        case title
        case categories = "movie_categories"
        case duration
        case rating
        case summary
        case image
    }
    
    /*
    init(from decoder: Decoder) throws {
        let container = try? decoder.container(keyedBy: CodingKeys.self)
        title = try container?.decodeIfPresent(String.self, forKey: .title) ?? "Nenhum título"
    }
    */
}
