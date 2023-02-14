//
//  RMCharacterViewController.swift
//  RickAndMorty
//
//  Created by Gustavo Ferrufino on 2023-02-03.
//

import UIKit

/// Controller to show and search for Characters
final class RMCharacterViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .systemBackground
        title = "Characters"
        
        let request = RMRequest(
            endpoint: .character,
            queryParameters: [
                URLQueryItem(name: "name", value: "rick"),
                URLQueryItem(name: "status", value: "alive")
            ]
        )
        print(request.url)
        
        RMService.shared.execute(.listCharactersRequests,
                                 expecting: RMGetAllCharactersResponse.self) { result in
            switch result {
            case .success(let model) :
                print(String(describing: model))
            case .failure(let error):
                print(String(describing: error))
            }
        }
    }

}
