//
//  AppDelegate.swift
//  BookSearcher
//
//  Created by Aleksandrs Proskurins on 29.03.2021.
//  Copyright © 2021 a.proskurins. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    private let applicationRouter = ApplicationRouter()
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        applicationRouter.startNavigation()
        return true
    }
}

