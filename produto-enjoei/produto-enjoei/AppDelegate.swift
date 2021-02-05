//
//  AppDelegate.swift
//
//  Created by lino.
//  Copyright © 2020 enjoei. All rights reserved.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?
    
    func applicationDidFinishLaunching(_ application: UIApplication) {
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.rootViewController = ViewController()
        window?.makeKeyAndVisible()
    }
}
