//
//  DataController.swift
//  Todo
//
//  Created by Stefan Huynh on 4/13/15.
//  Copyright (c) 2015 Stefan Huynh. All rights reserved.
//

class DataController {
    // This creates a singleton that we can use across the app.
    static let instance = DataController()
    
    var todoItems: [TodoItem]
    
    init() {
        self.todoItems = [
            TodoItem(title: "Learn Swift", description: "Build cool apps."),
            TodoItem(title: "Solve world hunger")
        ]
    }
}