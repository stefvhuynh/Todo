//
//  DataController.swift
//  Todo
//
//  Created by Stefan Huynh on 4/13/15.
//  Copyright (c) 2015 Stefan Huynh. All rights reserved.
//

import UIKit

class DataController {
    static var database = NSUserDefaults.self
    
    class func loadTodoItems() -> [TodoItem] {
        let savedTodoItems: [AnyObject]? =
            database.standardUserDefaults().arrayForKey("todoItems")
        
        if savedTodoItems != nil {
            return savedTodoItems as! [TodoItem]
        }
        
        return [TodoItem]()
    }
}