//
//  BaseRouter.swift
//  BookSearcher
//
//  Created by Aleksandrs Proskurins on 30.03.2021.
//

import UIKit

class BaseRouter {
    weak var view: ViewProtocol?
    
    init(view: ViewProtocol) {
        self.view = view
    }
}
