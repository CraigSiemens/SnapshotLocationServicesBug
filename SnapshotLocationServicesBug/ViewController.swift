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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if CLLocationManager.authorizationStatus() == .authorizedAlways {
            showLocationServicesIcon()
        } else {
            locationManager.requestAlwaysAuthorization()
        }
    }

    func showLocationServicesIcon() {
        locationManager.startMonitoringSignificantLocationChanges()
    }
    
    func locationManager(_ manager: CLLocationManager, didChangeAuthorization status: CLAuthorizationStatus) {
        guard status == .authorizedAlways else { fatalError() }
        showLocationServicesIcon()
    }
}

