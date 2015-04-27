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
        
        class MockNSUserDefaults: NSUserDefaults {
            override class func standardUserDefaults() -> NSUserDefaults {
                return MockNSUserDefaults()
            }
            
            override func arrayForKey(defaultName: String) -> [AnyObject]? {
                return [TodoItem(title: "item1"), TodoItem(title: "item2")]
            }
        }
        
        DataController.database = MockNSUserDefaults.self
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    func testLoadTodoItems() {
        XCTAssertEqual(
            DataController.loadTodoItems().count,
            2,
            "loadTodoItems did not return the right number of todos"
        )
    }
}