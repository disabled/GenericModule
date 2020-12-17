//
//  AppDelegate.swift
//  GenericModuleExample
//
//  Created by Nick Tyunin on 17.12.2020.
//  Copyright © 2020 Rosberry. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    lazy var appCoordinator: AppCoordinator = .init()

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        appCoordinator.start(launchOptions: launchOptions)
        return true
    }
}

