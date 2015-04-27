//
//  ViewController.swift
//  Todo
//
//  Created by Stefan Huynh on 4/7/15.
//  Copyright (c) 2015 Stefan Huynh. All rights reserved.
//

import UIKit

class ListViewController: UIViewController,
                          UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet var tableView: UITableView!
    var DataModule = DataController.self
    var todoItems = [TodoItem]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        todoItems = DataModule.loadTodoItems()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
   
    func tableView(tableView: UITableView,
                   numberOfRowsInSection section: Int) -> Int {
                    
        return todoItems.count
    }
    
    func tableView(tableView: UITableView,
                   cellForRowAtIndexPath
                   indexPath: NSIndexPath) -> UITableViewCell {
                    
        var cell = UITableViewCell(
            style: UITableViewCellStyle.Default,
            reuseIdentifier: "ListTableCell"
        )

        if let textLabel = cell.textLabel {
            textLabel.text = todoItems[indexPath.row].title
        }
                    
        return cell
    }
}