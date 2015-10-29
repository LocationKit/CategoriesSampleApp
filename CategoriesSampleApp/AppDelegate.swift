//
//  AppDelegate.swift
//  CategoriesSampleApp
//
//  Created by Victor Quinn on 10/29/15.
//  Copyright © 2015 LocationKit. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        LocationKit.sharedInstance().startWithApiToken("banana", delegate: nil)
        return true
    }
}

