//
//  RMCharacter.swift
//  RickAndMorty
//
//  Created by Gustavo Ferrufino on 2023-02-03.
//

import Foundation

struct RMCharacter: Codable {
    let id: Int
    let name: String
    let status: RMCharacterStatus
    let species: String
    let type: String
    let gender: RMCharacterGender
    let origin: RMOrigin
    let location: RMSingleLocation
    let image: String
    let episode: [String]
    let url: String
    let created: String
}

enum RMCharacterStatus: String, Codable {
    case Alive = "Alive"
    case Dead = "Dead"
    case `unknown` = "unknown"
    
    var text : String {
        switch self {
        case .Alive, .Dead:
            return rawValue
        case .unknown:
            return "Unknown"
        }
    }
}

enum RMCharacterGender: String, Codable {
    case Male = "Male"
    case Female = "Female"
    case Genderless = "GenderLess"
    case `unknown` = "unknown"
    
    var text : String {
        switch self {
        case .Male, .Female, .Genderless:
            return rawValue
        case .unknown:
            return "Unknown"
        }
    }
}

struct RMOrigin: Codable {
    let name: String
    let url: String
}

struct RMSingleLocation: Codable {
    let name: String
    let url: String
}
