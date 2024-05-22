//
//  BookCollection.swift
//  BookSearcher
//
//  Created by Aleksandrs Proskurins on 30.03.2021.
//

import Foundation

class BookCollection: Codable {
    var kind: String
    var totalItems: Int
    var items: [BookDTO]
}
