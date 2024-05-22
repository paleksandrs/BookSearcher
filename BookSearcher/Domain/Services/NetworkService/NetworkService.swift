//
//  NetworkService.swift
//  BookSearcher
//
//  Created by Aleksandrs Proskurins on 30.03.2021.
//

import Foundation

typealias BooksCallback = (BookCollection?) -> Void

protocol NetworkService {
    func getBooks(query: String, completion: @escaping BooksCallback)
}
