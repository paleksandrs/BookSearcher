//
//  SearchPresenter.swift
//  BookSearcher
//
//  Created by Aleksandrs Proskurins on 29.03.2021.
//

import Foundation

class SearchPresenter: BasePresenter<SearchViewInputProtocol, SearchInteractorProtocol, SearchRouterProtocol>, SearchViewOutputProtocol {
    
    private var data: [BookDTO] = []
    
    func updateData(query: String) {
        interactor.loadData(query: query) { [weak self] collection in
            self?.setup(data: collection?.items ?? [])
        }
    }
    
    private func setup(data: [BookDTO]) {
        self.data = data
        let factory = SearchPresenterBookVMFactory()
        view?.updateUI(data: data.map { factory.createViewModel(dto: $0) })
    }
    
    func selectItem(index: Int) {
        router.openDetails(book: data[index])
    }
}
