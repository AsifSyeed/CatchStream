//
//  Movie.swift
//  CatchStream
//
//  Created by BS109 on 19/5/22.
//

import Foundation

struct TrendingMoviesResponse: Codable {
    let results: [Movie]
}

struct Movie: Codable {
    let id: Int
    let media_type: String?
    let original_name: String?
    let original_title: String?
    let poster_path: String?
    let overview: String?
    let vote_count: Int
    let release_date: String?
    let vote_average: Double
}


/*
 
 adult = 0;
 "backdrop_path" = "/fIwiFha3WPu5nHkBeMQ4GzEk0Hv.jpg";
 "genre_ids" =             (
     28,
     878,
     35,
     12
 );
 id = 545611;
 "media_type" = movie;
 "original_language" = en;
 "original_title" = "Everything Everywhere All at Once";
 overview = "An aging Chinese immigrant is swept up in an insane adventure, where she alone can save what's important to her by connecting with the lives she could have led in other universes.";
 popularity = "166.261";
 "poster_path" = "/w3LxiVYdWWRvEVdn5RYq6jIqkb1.jpg";
 "release_date" = "2022-03-24";
 title = "Everything Everywhere All at Once";
 video = 0;
 "vote_average" = "8.6";
 "vote_count" = 209;
 
 */
