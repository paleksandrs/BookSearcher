//
//  DetailsEntity.swift
//  BookSearcher
//
//  Created by Aleksandrs Proskurins on 29.03.2021.
//

import UIKit

class DetailsConfigurator {
    
    func createDetailsView(book: BookDTO) -> ViewProtocol {
        let view: DetailsView = Storyboard.loadVC()
        let interactor = DetailsInteractor()
        let router = DetailsRouter(view: view)
        let presenter = DetailsPresenter(view: view, interactor: interactor, router: router)
        view.viewOutput = presenter
        presenter.book = book
        return view
    }
}
