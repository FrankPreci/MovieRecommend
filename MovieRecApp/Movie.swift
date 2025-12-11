//
//  Movie.swift
//  MovieRecApp
//
//  Created by Beatriz Torres on 12/7/25.
//

import Foundation

enum Genre: String, CaseIterable, Identifiable, Codable {
    case action = "Action"
    case adventure = "Adventure"
    case animation = "Animation"
    case biography = "Biography"
    case comedy = "Comedy"
    case crime = "Crime"
    case drama = "Drama"
    case family = "Family"
    case fantasy = "Fantasy"
    case horror = "Horror"
    case music = "Music"
    case musical = "Musical"
    case mystery = "Mystery"
    case romance = "Romance"
    case scifi = "Sci-Fi"
    case thriller = "Thriller"
    case war = "War"

    var id: String { rawValue }
}


struct Movie: Identifiable, Hashable {
    let id = UUID()
    let title: String
    let genre: Genre
    let description: String
    let rating: Double
    let posterImageName: String
    
    static let sampleMovies: [Movie] = [
        Movie(
            title: "Inception",
            genre: Genre.scifi,
            description: "A thief who steals corporate secrets through the use of dream-sharing technology is given the inverse task of planting an idea into the mind of a C.E.O.",
            rating: 8.8,
            posterImageName: "inception"
        ),
        Movie(
            title: "The Dark Knight",
            genre: Genre.action,
            description: "When the menace known as the Joker emerges from his mysterious past, he wreaks havoc and chaos on the people of Gotham.",
            rating: 9.0,
            posterImageName: "dark_knight"
        ),
        Movie(
            title: "Forrest Gump",
            genre: Genre.drama,
            description: "The presidencies of Kennedy and Johnson, the Vietnam War, the Watergate scandal and other historical events unfold from the perspective of an Alabama man with an IQ of 75.",
            rating: 8.8,
            posterImageName: "forrest_gump"
        ),
        Movie(
            title: "The Hangover",
            genre: Genre.comedy,
            description: "Three buddies wake up from a bachelor party in Las Vegas, with no memory of the previous night and the bachelor missing.",
            rating: 7.7,
            posterImageName: "hangover"
        ),
        Movie(
            title: "The Conjuring",
            genre: Genre.horror,
            description: "Paranormal investigators Ed and Lorraine Warren work to help a family terrorized by a dark presence in their farmhouse.",
            rating: 7.5,
            posterImageName: "conjuring"
        ),
        Movie(
            title: "The Notebook",
            genre: Genre.romance,
            description: "A poor yet passionate young man falls in love with a rich young woman, giving her a sense of freedom, but they are soon separated because of their social differences.",
            rating: 7.8,
            posterImageName: "notebook"
            )
        ]
}
