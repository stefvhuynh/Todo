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
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    func tableView(tableView: UITableView,
                   numberOfRowsInSection section: Int) -> Int {
                    
        return DataController.instance.todoItems.count
    }
    
    func tableView(tableView: UITableView,
                   cellForRowAtIndexPath
                   indexPath: NSIndexPath) -> UITableViewCell {
                    
        var cell = UITableViewCell(
            style: UITableViewCellStyle.Default,
            reuseIdentifier: "ListTableCell"
        )

        if let textLabel = cell.textLabel {
            textLabel.text =
                DataController.instance.todoItems[indexPath.row].title
        }
                    
        return cell
    }
}