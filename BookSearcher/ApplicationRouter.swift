//
//  ApplicationRouter.swift
//  BookSearcher
//
//  Created by Aleksandrs Proskurins on 30.03.2021.
//

import UIKit

class ApplicationRouter {
    
    private let window = UIWindow(frame: UIScreen.main.bounds)
    
    func startNavigation() {
        let searchConfigurator = SearchConfigurator()
        let rootVC = searchConfigurator.createSearchView().viewController
        let navigationVC = UINavigationController(rootViewController: rootVC)
        window.rootViewController = navigationVC
        window.makeKeyAndVisible()
    }
}
