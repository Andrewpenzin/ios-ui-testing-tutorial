//
//  UserData.swift
//  UITestingTutorialUITests
//
//  Created by Andrei Penzin on 13.04.2022.
//  Copyright © 2022 Code Pro. All rights reserved.
//

import Foundation

class UserData {
    
    let login:String
    let password:String
    
    init(_ userType:UserType) {
        switch userType {
            case .ValidUser:
                login = "CodePro"
                password = "abc123"
            case .InvalidUser:
                login = "test"
                password = "12345678"
        }
    }
}
