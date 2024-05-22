//
//  URLBuilder.swift
//  BookSearcher
//
//  Created by Aleksandrs Proskurins on 30.03.2021.
//

import UIKit

class URLBuilder {
    private var scheme: String = "https"
    private var host: String = Settings.shared.baseUrl
    private var path: String = ""
    private var queryParams: [String: String] = [:]
    
    func with(scheme: String) -> URLBuilder {
        self.scheme = scheme
        return self
    }
    
    func with(host: String) -> URLBuilder {
        self.host = host
        return self
    }
    
    func with(path: String) -> URLBuilder {
        self.path = path
        return self
    }
    
    func with(queryParams: [String: String]) -> URLBuilder {
        self.queryParams = queryParams
        return self
    }
    
    func build() -> URL? {
        var components = URLComponents()
        components.scheme = scheme
        components.host = host
        components.path = path
        components.queryItems = []
        queryParams.forEach { components.queryItems?.append(.init(name: $0, value: $1)) }
        return components.url
    }
}
