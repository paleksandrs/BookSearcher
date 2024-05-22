//
//  SearchViewInputProtocol.swift
//  BookSearcher
//
//  Created by Aleksandrs Proskurins on 30.03.2021.
//

import Foundation

protocol SearchViewInputProtocol: class {
    func updateUI(data: [SearchPresenterBookVM])
}
