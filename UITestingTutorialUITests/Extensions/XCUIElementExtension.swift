//
//  XCUIElementExtension.swift
//  UITestingTutorialUITests
//
//  Created by Andrei Penzin on 19.04.2022.
//  Copyright © 2022 Code Pro. All rights reserved.
//

import Foundation
import XCTest

extension XCUIElement {
    
    func waitForNonExistence(_ timeout:Double = 10) -> Bool {
        let expectation = XCTNSPredicateExpectation(predicate: NSPredicate(format: "exists == false"), object: self)
        return XCTWaiter.wait(for: [expectation], timeout: timeout) == .completed ? true : false
    }
}
