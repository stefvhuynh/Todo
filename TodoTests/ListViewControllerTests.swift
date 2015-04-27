//
//  ListViewControllerTests.swift
//  TodoTests
//
//  Created by Stefan Huynh on 4/9/15.
//  Copyright (c) 2015 Stefan Huynh. All rights reserved.
//

import UIKit
import XCTest

class ListViewControllerTests: XCTestCase {
    var listViewController: ListViewController!
    
    class MockDataController: DataController {
       override class func loadTodoItems() -> [TodoItem] {
           return [TodoItem(title: "item1"), TodoItem(title: "item2")]
       }
    }
    
    override func setUp() {
        super.setUp()
        
        let storyboard = UIStoryboard(
            name: "Main",
            bundle: NSBundle(forClass: self.dynamicType)
        )
        
        listViewController =
            storyboard.instantiateViewControllerWithIdentifier(
                "ListViewControllerId"
            ) as! ListViewController
        
        
        listViewController.dataModule = MockDataController.self
        let _ = listViewController.view
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    func testTableViewConnected() {
        let tableView = listViewController.tableView
        
        XCTAssertNotNil(tableView, "tableView is not connected")
        XCTAssertTrue(
            tableView.delegate === listViewController,
            "tableView.delegate is not set to listViewController"
        )
        XCTAssertTrue(
            tableView.dataSource === listViewController,
            "tableView.dataSource is not set to listViewController"
        )
    }
    
    func testTableViewRowsInSection() {
        var tableView = listViewController.tableView
        var rows = listViewController.tableView(
            tableView,
            numberOfRowsInSection: 1
        )
        
        XCTAssertEqual(rows, 2, "Number of rows does not match data")
    }
}