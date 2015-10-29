//
//  LocationManager.swift
//  CategoriesSampleApp
//
//  Created by Victor Quinn on 10/29/15.
//  Copyright © 2015 LocationKit. All rights reserved.
//

import Foundation

class LocationManager: NSObject, LocationKitDelegate {
    func locationKit(locationKit: LocationKit!, didUpdateLocation location: CLLocation?) {
        if let loc = location {
            print("Got a location (\(loc.coordinate.latitude), \(loc.coordinate.longitude))")
        }
    }

    func locationKit(locationKit: LocationKit!, didStartVisit visit: LKVisit?) {
        if let venue = visit?.place.venue {
            print("Visit started at a venue with category \(venue.category)")
        }
    }

    func locationKit(locationKit: LocationKit!, didEndVisit visit: LKVisit?) {
        if let venue = visit?.place.venue {
            print("Visit ended at a venue with category \(venue.category)")
        }
    }
}