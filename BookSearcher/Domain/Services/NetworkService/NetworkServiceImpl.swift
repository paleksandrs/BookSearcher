//
//  NetworkServiceImpl.swift
//  BookSearcher
//
//  Created by Aleksandrs Proskurins on 30.03.2021.
//

import UIKit
import Alamofire

class NetworkServiceImpl: NetworkService {
    func getBooks(query: String, completion: @escaping BooksCallback) {
        let path = "/books/v1/volumes"
        let params = ["q": query]
        guard let url = URLBuilder().with(path: path).with(queryParams: params).build() else {
            return
        }
        Alamofire.request(url).response { response in
            completion(try? JSONDecoder().decode(BookCollection.self, from: response.data!))
        }
        //TODO: Handle networking errors
    }
}
