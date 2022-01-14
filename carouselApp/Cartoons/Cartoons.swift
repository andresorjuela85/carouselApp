//
//  Cartoons.swift
//  carouselApp
//
//  Created by Camilo Orjuela on 12/01/22.
//  Copyright © 2022 Camilo Orjuela. All rights reserved.
//

import Foundation

/*
struct webCartoons: Decodable {
    let movies: [Cartoon]
}
*/
struct Cartoon: Decodable {
    let title: String
    let year: Int?
    let creator: [String]?
    let rating: String?
    let genre: [String]?
    let runtime_in_minutes: Int?
    let episodes: Int?
    let image: String?
    let id: Int?
    
}
/*
struct Cartoon: Decodable {
    let title: String
    let episode_id: Int
    let opening_crawl: String?
    let director: String?
    let producer: String?
    let release_date: String?
    var leido: Bool?
}
 */
/*

 */
