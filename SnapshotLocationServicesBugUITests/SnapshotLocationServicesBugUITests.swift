//
//  SnapshotLocationServicesBugUITests.swift
//  SnapshotLocationServicesBugUITests
//
//  Created by Craig Siemens on 2017-01-20.
//  Copyright © 2017 Craig Siemens. All rights reserved.
//

import XCTest

class SnapshotLocationServicesBugUITests: XCTestCase {
    
    var alertHandler: NSObjectProtocol!
    
    override func setUp() {
        super.setUp()
        
        // Put setup code here. This method is called before the invocation of each test method in the class.
        alertHandler = addUIInterruptionMonitor(withDescription: "alert handler") { (alert: XCUIElement) -> Bool in
            return false
        }
        
        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false
        
        // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
        let app = XCUIApplication()
        setupSnapshot(app)
        app.launch()
        
        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
        removeUIInterruptionMonitor(alertHandler)
    }

    
    func testExample() {
        let app = XCUIApplication()
        app.buttons["Request Permission"].tap()
        app.buttons["Show Location Servivces Icon"].tap()

        // Will just wait here forever
        Snapshot.waitForLoadingIndicatorToDisappear()
    }
}
