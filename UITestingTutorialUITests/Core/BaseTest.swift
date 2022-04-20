//
//  BaseTest.swift
//  UITestingTutorialUITests
//
//  Created by Andrei Penzin on 13.04.2022.
//  Copyright © 2022 Code Pro. All rights reserved.
//

import XCTest

class BaseTest : XCTestCase {
    
    let app = XCUIApplication()
    lazy var loginPage = LoginPage()
    lazy var profilePage = ProfilePage()
    
    override func setUp() {
        continueAfterFailure = true
        app.launch()
    }

    override func tearDown() {
        
    }
}
