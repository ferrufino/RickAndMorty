//
//  RMEndpoint.swift
//  RickAndMorty
//
//  Created by Gustavo Ferrufino on 2023-02-03.
//

import Foundation

/// Represents unique API endpoints
@frozen enum RMEndpoint: String { // by inheriting string, when cases get referred they return a string.
    /// Endpoint to get character info
    case character
    /// Endpoint to get location info
    case location
    /// Endpoint to get episode info
    case episode
}
