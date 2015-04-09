//
//  TodoTests.swift
//  TodoTests
//
//  Created by Stefan Huynh on 4/7/15.
//  Copyright (c) 2015 Stefan Huynh. All rights reserved.
//

import UIKit
import XCTest

class TodoTests: XCTestCase {
    var listViewController: ListViewController!
    
    override func setUp() {
        super.setUp()
        
        let storyboard = UIStoryboard(
            name: "Main",
            bundle: NSBundle(forClass: self.dynamicType)
        )
        
        listViewController =
            storyboard.instantiateViewControllerWithIdentifier(
                "ListViewControllerId"
            ) as ListViewController
        
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
}