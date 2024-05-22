//
//  BasePresenter.swift
//  BookSearcher
//
//  Created by Aleksandrs Proskurins on 30.03.2021.
//

import UIKit

class BasePresenter<ViewInputProtocol, InteractorProtocol, RouterProtocol> {
    private weak var rawView: AnyObject?
    var view: ViewInputProtocol? {
        set {
            rawView = newValue as AnyObject
        }
        get {
            return rawView as? ViewInputProtocol
        }
    }
    let interactor: InteractorProtocol
    let router: RouterProtocol
    
    init(view: ViewInputProtocol, interactor: InteractorProtocol, router: RouterProtocol) {
        self.interactor = interactor
        self.router = router
        self.view = view
    }
}
