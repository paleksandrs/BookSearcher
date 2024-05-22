//
//  SearchViewOutputProtocol.swift
//  BookSearcher
//
//  Created by Aleksandrs Proskurins on 30.03.2021.
//

import Foundation

protocol SearchViewOutputProtocol {
    func updateData(query: String)
    func selectItem(index: Int)
}
