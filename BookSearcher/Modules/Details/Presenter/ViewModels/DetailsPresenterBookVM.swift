//
//  DetailsPresenterBoolVM.swift
//  BookSearcher
//
//  Created by Aleksandrs Proskurins on 30.03.2021.
//

import UIKit

class DetailsPresenterBookVM {
    let title: String
    let author: String?
    let thumbnailUrl: URL?
    let description: String?
    
    init(title: String, author: String?, thumbnailUrl: URL?, description: String?) {
        self.title = title
        self.author = author
        self.thumbnailUrl = thumbnailUrl
        self.description = description
    }
}
