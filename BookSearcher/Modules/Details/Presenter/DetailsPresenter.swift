//
//  DetailsPresenter.swift
//  BookSearcher
//
//  Created by Aleksandrs Proskurins on 29.03.2021.
//

import UIKit

class DetailsPresenter: BasePresenter<DetailsViewInputProtocol, DetailsInteractorProtocol, DetailsRouterProtocol>, DetailsViewOutputProtocol {
    var book: BookDTO?
    
    func loadData() {
        guard let book = book else { fatalError("Book wasn't set")}
        
        view?.show(details: DetailsPresenterBookVMFactory().createViewModel(dto: book))
    }
}
