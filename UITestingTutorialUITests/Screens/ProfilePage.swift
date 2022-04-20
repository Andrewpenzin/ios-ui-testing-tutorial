//
//  ProfilePage.swift
//  UITestingTutorialUITests
//
//  Created by Andrei Penzin on 13.04.2022.
//  Copyright © 2022 Code Pro. All rights reserved.
//

import Foundation
import XCTest

class ProfilePage : BasePage {
    
    private lazy var navigationBar = app.navigationBars["Mockify Music"]
    private lazy var newMusicCell = app.otherElements.tables.cells.element(boundBy: 0).staticTexts["New Music"]
    private lazy var justForYouCell = app.otherElements.tables.cells.element(boundBy: 1).staticTexts["Just For You"]
    private lazy var radioCell = app.otherElements.tables.cells.element(boundBy: 2).staticTexts["Radio"]
    private lazy var myDownloadsCell = app.otherElements.tables.cells.element(boundBy: 3).staticTexts["My Downloads"]
    
    func pressProfileButton() {
        navigationBar.buttons["Profile"].tap()
    }
    
    func assertNavigationBarExists() {
        XCTAssertTrue(navigationBar.staticTexts["Mockify Music"].exists)
    }
    
    func assertProfileButtonIsHittable() {
        XCTAssertTrue(navigationBar.buttons["Profile"].isHittable)
    }
    
    func assertNewMusicCellIsHittable() {
        XCTAssertTrue(newMusicCell.isHittable)
    }
    
    func assertJustForYouCellIsHittable() {
        XCTAssertTrue(justForYouCell.isHittable)
    }
    
    func assertRadioCellIsHittable() {
        XCTAssertTrue(radioCell.isHittable)
    }
    
    func assertmyDownloadsCellIsHittable() {
        XCTAssertTrue(myDownloadsCell.isHittable)
    }
    
    
}
