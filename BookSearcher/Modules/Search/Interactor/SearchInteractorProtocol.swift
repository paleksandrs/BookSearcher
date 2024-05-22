//
//  SearchInteractorProtocol.swift
//  BookSearcher
//
//  Created by Aleksandrs Proskurins on 30.03.2021.
//

import Foundation

protocol SearchInteractorProtocol {
    func loadData(query: String, completion: @escaping BooksCallback) 
}
