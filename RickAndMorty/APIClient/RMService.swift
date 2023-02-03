//
//  RMService.swift
//  RickAndMorty
//
//  Created by Gustavo Ferrufino on 2023-02-03.
//

import Foundation

/// Primary API service object to get Rick and Morty data
final class RMService {
    
    /// Shared Singleton instance
    static let shared = RMService()
    
    /// privitized intializer, forcing everyone to use the Singleton
    private init() {}
    
    /// Send Rick and Morty API Call
    /// - Parameters:
    ///   - request: Request instance
    ///   - completion: Callback with data or error
    public func execute(_ request: RMRequest, completion: @escaping () -> Void) {
        
    }
}
