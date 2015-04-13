//
//  DataControllerTests.swift
//  Todo
//
//  Created by Stefan Huynh on 4/13/15.
//  Copyright (c) 2015 Stefan Huynh. All rights reserved.
//

import XCTest

class DataControllerTests: XCTestCase {
    override func setUp() {
        super.setUp()
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    func testSharedInstanceNotNil() {
        XCTAssertNotNil(DataController.instance, "Shared instance is nil")
    }
    
    func testSharedInstanceUnique() {
        XCTAssertFalse(
            DataController.instance === DataController(),
            "Shared instance is not unique"
        )
    }
}