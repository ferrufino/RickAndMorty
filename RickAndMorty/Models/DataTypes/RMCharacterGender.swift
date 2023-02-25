//
//  RMCharacterGender.swift
//  RickAndMorty
//
//  Created by Gustavo Ferrufino on 2023-02-24.
//

import Foundation

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
