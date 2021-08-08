//
//  Movie.swift
//  TableList
//
//  Created by guna.vendina on 07/08/2021.
//

import Foundation

struct Film {
    let movie: String
    let year: String
    let poster: String
    
    static func createFilm() -> [Film]{
        var films: [Film] = []
        
        let movies = DataManager.shared.movie
        let years = DataManager.shared.year
        let posters = DataManager.shared.poster
        
        for index in 0..<movies.count {
            let film = Film(movie: movies[index], year: years[index], poster: posters[index])
            films.append(film)
        }
    return films
        
    }
    
}
