//
//  SearchRouter.swift
//  BookSearcher
//
//  Created by Aleksandrs Proskurins on 29.03.2021.
//

import UIKit

class SearchRouter: BaseRouter, SearchRouterProtocol {    
    func openDetails(book: BookDTO) {
        let detailsConfigurator = DetailsConfigurator()
        let viewController = detailsConfigurator.createDetailsView(book: book).viewController
        view?.viewController.navigationController?.pushViewController(viewController, animated: true)
    }
}
