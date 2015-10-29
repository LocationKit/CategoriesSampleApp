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
    let locationManager = LocationManager()

    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        let locationKit = LocationKit.sharedInstance();

        // First, start LocationKit
        locationKit.startWithApiToken("cf725f29adb95ec5", delegate: self.locationManager)

        // Next let's give it some visit criteria
        let visitCriteria = LKVisitCriteria()

        // We're going to set anyVenue to true so we get alerts for all venue
        // visits regardless of name or category
        visitCriteria.anyVenue = true

        locationKit.setVisitCriteria([visitCriteria])
        return true
    }
}

