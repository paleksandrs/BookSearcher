//
//  Storyboard.swift
//  BookSearcher
//
//  Created by Aleksandrs Proskurins on 30.03.2021.
//

import UIKit

class Storyboard {
    static func loadVC<T>() -> T {
        let screenId = String(describing: T.self)
        return UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: screenId) as! T
    }
}
