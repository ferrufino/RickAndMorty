//
//  RMRequest.swift
//  RickAndMorty
//
//  Created by Gustavo Ferrufino on 2023-02-03.
//

import Foundation

/// Object that represents a single API call
final class RMRequest {
    /// API Contstants
    private struct Constants {
        static let baseUrl = "https://rickandmortyapi.com/api"
    }
    
    /// Desired endpoint
    private let endpoint: RMEndpoint
    
    /// Path Components for API, if any
    private let pathComponents: [String]
    
    /// Query arguments for API, if any
    private let queryParameters: [URLQueryItem]
    
    /// Constructured url for the api request in string format
    private var urlString: String {
        var string = Constants.baseUrl
        string += "/"
        string += endpoint.rawValue
        
        if !pathComponents.isEmpty {
            pathComponents.forEach({
                string += "/\($0)"
            })
        }
        
        if !queryParameters.isEmpty {
            string += "?"
            let argumentString = queryParameters.compactMap({
                guard let value = $0.value else { return nil }
                return "\($0.name)=\(value)"
            }).joined(separator: "&")
            
            string += argumentString
        }
        
        return string
    }
    
    // MARK: - Public
    
    /// Desired http Method
    public let httpMethod = "GET"
    
    ///Computed & constructed API url
    public var url: URL? {
        return URL(string: urlString)
    }
    
    /// Construct request
    /// - Parameters:
    ///   - endpoint: Target Endpoint
    ///   - pathComponents: Collection of Path components
    ///   - queryParameters: Collection of Query Paramters
    public init(endpoint: RMEndpoint,
         pathComponents: [String] = [],
         queryParameters: [URLQueryItem] = []) {
        self.endpoint = endpoint
        self.pathComponents = pathComponents
        self.queryParameters = queryParameters
    }
}

extension RMRequest {
    static let listCharactersRequests = RMRequest(endpoint: .character)
}
