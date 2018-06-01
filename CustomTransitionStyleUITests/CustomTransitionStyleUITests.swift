//
//  CustomTransitionStyleUITests.swift
//  CustomTransitionStyleUITests
//
//  Created by Vanee Virdi on 01/06/18.
//  Copyright © 2018 Vanee Virdi. All rights reserved.
//

import XCTest

class CustomTransitionStyleUITests: XCTestCase {
        
    override func setUp() {
        super.setUp()
        continueAfterFailure = false
        let app = XCUIApplication()
        setupSnapshot(app)
        app.launch()
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    func testExample() {
        snapshot("01HomeScreen")
    }
    
}
