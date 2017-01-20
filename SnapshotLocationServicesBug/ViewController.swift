//
//  ViewController.swift
//  SnapshotLocationServicesBug
//
//  Created by Craig Siemens on 2017-01-20.
//  Copyright © 2017 Craig Siemens. All rights reserved.
//

import CoreLocation
import UIKit

class ViewController: UIViewController, CLLocationManagerDelegate {

    let locationManager = CLLocationManager()
    
    @IBAction func requestPermissionsTapped(_ sender: Any) {
        if CLLocationManager.authorizationStatus() != .authorizedAlways {
            locationManager.requestAlwaysAuthorization()
        }
    }
    
    @IBAction func showLocationServicesIconTapped(_ sender: Any) {
        let coordinate = CLLocationCoordinate2D(latitude: 0, longitude: 0)
        let region = CLCircularRegion(center: coordinate, radius: 100, identifier: "test")
        locationManager.startMonitoring(for: region)

        // Does not work with this
//        locationManager.startMonitoringSignificantLocationChanges()
    }
}
