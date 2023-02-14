//
//  RMLocation.swift
//  RickAndMorty
//
//  Created by Gustavo Ferrufino on 2023-02-03.
//

import Foundation

struct RMLocation: Codable {
    let id: Int
    let name: String
    let type: String
    let dimension: String
    let residents: [String]
    let url: String
    let created: String
}
