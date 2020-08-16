//
//  ConfigUiTests.swift
//  LoginExampleUITests
//
//  Created by HERBERT PEREIRA SOARES on 16/05/20.
//  Copyright © 2020 Gary Tokman. All rights reserved.
//

import XCTest

class ConfigUiTests: XCTestCase {

    let app = XCUIApplication()
    let dell = Springboard()
    let elementsQuery = XCUIApplication().scrollViews.otherElements
    
    override func setUp() {
        super.setUp()
        continueAfterFailure = false
            XCUIApplication().launch()
    }
    
    override func tearDown() {
        //ScreenShot
        let screenshot = XCUIScreen.main.screenshot()
        let fullScreenshotAttachment = XCTAttachment(screenshot: screenshot)
        fullScreenshotAttachment.lifetime = .keepAlways
        add(fullScreenshotAttachment)
        //Matar o aplicativo
        super.tearDown()
        XCUIApplication().terminate()
        dell.deleteApp()
    }
}
