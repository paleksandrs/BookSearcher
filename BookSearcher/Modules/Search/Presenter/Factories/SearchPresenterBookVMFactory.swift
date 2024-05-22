//
//  SearchPresenterBookVMFactory.swift
//  BookSearcher
//
//  Created by Aleksandrs Proskurins on 30.03.2021.
//

import UIKit

class SearchPresenterBookVMFactory {
    
    func createViewModel(dto: BookDTO) -> SearchPresenterBookVM {
        return SearchPresenterBookVM(title: dto.volumeInfo.title,
                                     author: dto.volumeInfo.authors?.joined(separator: ", "),
                                     thumbnailUrl: URL(string: dto.volumeInfo.imageLinks.smallThumbnail))
    }
}
