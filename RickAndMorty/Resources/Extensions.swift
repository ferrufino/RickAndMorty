//
//  Extensions.swift
//  RickAndMorty
//
//  Created by Gustavo Ferrufino on 2023-02-13.
//

import UIKit

extension UIView {
    func addSubviews(_ views: UIView...) {
        views.forEach({
            addSubview($0)
        })
    }
}
