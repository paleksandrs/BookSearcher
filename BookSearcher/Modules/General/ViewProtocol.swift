//
//  ViewProtocol.swift
//  BookSearcher
//
//  Created by Aleksandrs Proskurins on 30.03.2021.
//

import UIKit

protocol ViewProtocol: class {
    var viewController: UIViewController { get }
}

extension ViewProtocol where Self: UIViewController {
    var viewController: UIViewController { return self }
}
