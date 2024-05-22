//
//  SearchEntity.swift
//  BookSearcher
//
//  Created by Aleksandrs Proskurins on 29.03.2021.
//

import UIKit

class SearchConfigurator {
    
    func createSearchView() -> ViewProtocol {
        let view: SearchView = Storyboard.loadVC()
        let interactor = SearchInteractor(service: NetworkServiceImpl())
        let router = SearchRouter(view: view)
        view.viewOutput = SearchPresenter(view: view, interactor: interactor, router: router)
        return view
    }
}
