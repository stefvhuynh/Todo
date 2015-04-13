//
//  TodoItem.swift
//  Todo
//
//  Created by Stefan Huynh on 4/13/15.
//  Copyright (c) 2015 Stefan Huynh. All rights reserved.
//

class TodoItem {
    var title: String
    var description: String?
    var completed = false
    
    init(title: String, description: String? = nil) {
        self.title = title
        self.description = description
    }
}