//
//  TodoItemTests.swift
//  Todo
//
//  Created by Stefan Huynh on 4/13/15.
//  Copyright (c) 2015 Stefan Huynh. All rights reserved.
//

import XCTest

class TodoItemTests: XCTestCase {
    var todoItem: TodoItem!
    
    override func setUp() {
        super.setUp()
        todoItem = TodoItem(
            title: "Cool todo",
            description: "Some cool description."
        )
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    func testInit() {
        XCTAssertEqual(
            todoItem.title,
            "Cool todo",
            "TodoItem did not initialize with title passed in"
        )
        XCTAssertEqual(
            todoItem.description!,
            "Some cool description.",
            "TodoItem did not initialize with description passed in"
        )
        XCTAssertFalse(
            todoItem.completed,
            "TodoItem did not initialize with completed set to false"
        )
    }
    
    func testOptionalDescription() {
        let todoWithoutDescription = TodoItem(title: "Without description")
        XCTAssertNil(todoWithoutDescription.description)
    }
}