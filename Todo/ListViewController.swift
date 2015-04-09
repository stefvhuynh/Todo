//
//  ViewController.swift
//  Todo
//
//  Created by Stefan Huynh on 4/7/15.
//  Copyright (c) 2015 Stefan Huynh. All rights reserved.
//

import UIKit

class ListViewController:
    UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView,
        numberOfRowsInSection section: Int) -> Int {
                    
        return 3
    }
    
    func tableView(tableView: UITableView,
        cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
            
        var cell = UITableViewCell(
            style: UITableViewCellStyle.Default,
            reuseIdentifier: "ListTableCell"
        )
            
        cell.textLabel!.text = "Hello, world"
        return cell
    }
}