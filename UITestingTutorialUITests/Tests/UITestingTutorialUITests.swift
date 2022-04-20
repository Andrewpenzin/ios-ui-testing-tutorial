//
//  UITestingTutorialUITests.swift
//  UITestingTutorialUITests
//
//  Created by Andrei Penzin on 13.04.2022.
//  Copyright © 2022 Code Pro. All rights reserved.
//

import XCTest

class UITestingTutorialUITests: BaseTest {
    
    func testLoginWithValidUser() throws {
        let user = UserData(.ValidUser)
        
        profilePage.pressProfileButton()
        loginPage.tryToLogIn(user)
        loginPage.waitForPageNonExistence()
        profilePage.assertmyDownloadsCellIsHittable()
    }
    
    func testLoginWithInvalidUser() throws {
        let user = UserData(.InvalidUser)
        
        profilePage.pressProfileButton()
        loginPage.tryToLogIn(user)
        loginPage.assertAlertPresence()
    }
    
    func testCloseLoginPageBySwipeDown() throws {
        profilePage.pressProfileButton()
        loginPage.waitForPageExistence()
        loginPage.closePage()
        profilePage.assertmyDownloadsCellIsHittable()
    }
    
    func testPasswordCharsCount() throws {
        let password = "dlkajhsfkd"
        
        profilePage.pressProfileButton()
        loginPage.enterPassword(password)
        loginPage.assertPasswordCharsCount(password)
    }
    
    func testLoginPageElementsExists() throws {
        profilePage.pressProfileButton()
        loginPage.waitForPageExistence()
        loginPage.assertNavigationBarExists()
        loginPage.assertUsernameFieldExists()
        loginPage.assertPasswordFieldExists()
        loginPage.assertLoginButtonIsHittable()
    }
    
    func testProfilePageElementsExists() throws {
        profilePage.assertProfileButtonIsHittable()
        profilePage.assertNewMusicCellIsHittable()
        profilePage.assertRadioCellIsHittable()
        profilePage.assertmyDownloadsCellIsHittable()
        profilePage.assertJustForYouCellIsHittable()
        profilePage.assertNavigationBarExists()
    }
}


