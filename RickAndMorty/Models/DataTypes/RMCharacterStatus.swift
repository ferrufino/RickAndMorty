//
//  RMCharacterStatus.swift
//  RickAndMorty
//
//  Created by Gustavo Ferrufino on 2023-02-24.
//

import Foundation

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
