//
//  Springboard.swift
//  HyakuUITests
//
//  Created by HERBERT PEREIRA SOARES on 23/04/20.
//  Copyright © 2020 Cielo. All rights reserved.
//

import XCTest
import Foundation
class Springboard {
    
   lazy var springboard = XCUIApplication(bundleIdentifier: "com.apple.springboard")
    
        func deleteApp() {
            // Force delete the app from the springboard
            let appName = "LoginExample"
            let icon = springboard.icons[appName]
            if icon.exists {
                icon.press(forDuration: 2.0)
                
                icon.buttons["DeleteButton"].tap()
                sleep(2)
                
                var deleteButton = springboard.alerts["Delete “\(appName)”?"].buttons["Delete"]
                if !deleteButton.exists {
                    deleteButton = springboard.alerts["Apagar “\(appName)”?"].buttons["Apagar"]
                }
                
                deleteButton.tap()
                
                sleep(2)
                XCUIDevice.shared.press(.home)
            }
        }
    }



