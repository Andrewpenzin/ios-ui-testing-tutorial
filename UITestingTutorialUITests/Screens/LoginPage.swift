//
//  LoginPage.swift
//  UITestingTutorialUITests
//
//  Created by Andrei Penzin on 13.04.2022.
//  Copyright © 2022 Code Pro. All rights reserved.
//

import Foundation
import XCTest

class LoginPage : BasePage {
    
    private lazy var navigationBar = app.navigationBars["Login To Mockify"]
    private lazy var usernameField = app.otherElements.textFields["Username"]
    private lazy var passwordField = app.otherElements.secureTextFields["Password"]
    private lazy var loginButton = app.otherElements.buttons["Login"]
    private lazy var alert = app.alerts["Invalid Credentials"]
    
    func waitForPageExistence() {
        XCTAssertTrue(navigationBar.waitForExistence(timeout: 10))
    }
    
    func waitForPageNonExistence() {
        XCTAssertTrue(navigationBar.waitForNonExistence(15))
    }
    
    func closePage() {
        let start = navigationBar.coordinate(withNormalizedOffset: CGVector.zero)
        let finish = navigationBar.coordinate(withNormalizedOffset: CGVector(dx: 0, dy: 10))
        start.press(forDuration: 0, thenDragTo: finish)
    }
    
    func enterUserName(_ login:String) {
        usernameField.tap()
        usernameField.typeText(login)
    }
    
    func enterPassword(_ password:String) {
        passwordField.tap()
        passwordField.typeText(password)
    }
    
    func pressLogInButton() {
        loginButton.tap()
    }
    
    func tryToLogIn(_ user:UserData) {
        enterUserName(user.login)
        enterPassword(user.password)
        pressLogInButton()
    }

    func assertPasswordCharsCount(_ password:String) {
        let passwordFieldValue = passwordField.value as? String
        
        XCTAssertTrue(passwordFieldValue?.count == password.count)
        XCTAssertTrue(passwordFieldValue == String(repeating: "•", count: password.count))
    }
    
    func assertAlertPresence() {
        XCTAssertTrue(alert.scrollViews.element(boundBy: 0).staticTexts["Invalid Credentials"].exists)
        XCTAssertTrue(alert.scrollViews.element(boundBy: 0).staticTexts["Invalid User Name"].exists)
        XCTAssertTrue(alert.scrollViews.element(boundBy: 1).buttons["Ok"].isHittable)
    }
    
    func assertNavigationBarExists() {
        XCTAssertTrue(navigationBar.staticTexts["Login To Mockify"].exists)
    }
    
    func assertUsernameFieldExists() {
        XCTAssertTrue(usernameField.exists && usernameField.isHittable)
        XCTAssertTrue(usernameField.placeholderValue == "Username")
    }
    
    func assertPasswordFieldExists() {
        XCTAssertTrue(passwordField.exists && passwordField.isHittable)
        XCTAssertTrue(passwordField.placeholderValue == "Password")
    }
    
    func assertLoginButtonIsHittable() {
        XCTAssertTrue(loginButton.exists && loginButton.isHittable)
    }
}
