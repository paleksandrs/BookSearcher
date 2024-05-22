//
//  DetailsPresenterBoolVMFactory.swift
//  BookSearcher
//
//  Created by Aleksandrs Proskurins on 30.03.2021.
//

import UIKit

class DetailsPresenterBookVMFactory {
    
    func createViewModel(dto: BookDTO) -> DetailsPresenterBookVM {
        return DetailsPresenterBookVM(title: dto.volumeInfo.title,
                                     author: dto.volumeInfo.authors?.joined(separator: ", "),
                                     thumbnailUrl: URL(string: dto.volumeInfo.imageLinks.thumbnail),
                                     description: dto.volumeInfo.description)
    }
}
