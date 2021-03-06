//
//  Structs.swift
//  R2D2
//
//  Created by Ráchel Polachová on 24/01/2019.
//  Copyright © 2019 Rachel Polachova. All rights reserved.
//

import Foundation

struct Character: Decodable {
    let name: String
    let birthYear: String
    let height: String
    let films: [String]
    let species: [String]
    
}

struct CharactersResult: Decodable {
    let count: Int
    let next: String?
    let previous: String?
    var results: [Character]
}

struct Film: Decodable {
    let title: String
    let episodeId: Int
    let releaseDate: String
    let url: String
}

struct FilmsResult: Decodable {
    let count: Int
    let next: String?
    let previous: String?
    var results: [Film]
}

struct Starship: Decodable {
    let name: String
    let starshipClass: String
    let model: String
}

struct StarshipsResult: Decodable {
    let count: Int
    let next: String?
    let previous: String?
    var results: [Starship]
}

struct Vehicle: Decodable {
    let name: String
    let model: String
}

struct VehiclesResult: Decodable {
    let count: Int
    let next: String?
    let previous: String?
    var results: [Vehicle]
}

struct Specie: Decodable {
    let name: String
    let classification: String
    let averageHeight: String
    let url: String
}

struct SpeciesResult: Decodable {
    let count: Int
    let next: String?
    let previous: String?
    var results: [Specie]
}

struct Planet: Decodable {
    let name: String
    let population: String
}

struct PlanetsResult: Decodable {
    let count: Int
    let next: String?
    let previous: String?
    var results: [Planet]
}
