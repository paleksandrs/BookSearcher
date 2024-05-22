//
//  SearchPresenterBookVM.swift
//  BookSearcher
//
//  Created by Aleksandrs Proskurins on 30.03.2021.
//

import UIKit

class SearchPresenterBookVM {
    let title: String
    let author: String?
    let thumbnailUrl: URL?
    
    init(title: String, author: String?, thumbnailUrl: URL?) {
        self.title = title
        self.author = author
        self.thumbnailUrl = thumbnailUrl
    }
}
