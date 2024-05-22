//
//  SearchInteractor.swift
//  BookSearcher
//
//  Created by Aleksandrs Proskurins on 29.03.2021.
//

import UIKit

class SearchInteractor: SearchInteractorProtocol {
    
    private let service: NetworkService
    private var searchTask: DispatchWorkItem?
    private var lastQuery: String?
    
    init(service: NetworkService) {
        self.service = service
    }
    
    func loadData(query: String, completion: @escaping BooksCallback) {
        searchTask?.cancel()
       
        let task = DispatchWorkItem { [weak self] in
            self?.performRequestForData(query: query, completion: completion)
        }
        searchTask = task
        
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 0.5, execute: task)
    }
    
    private func performRequestForData(query: String, completion: @escaping BooksCallback) {
        lastQuery = query
        service.getBooks(query: query, completion: { [weak self] data in
            if query == self?.lastQuery { completion(data) }
        })
    }
}

