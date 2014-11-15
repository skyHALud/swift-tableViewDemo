//
//  ViewController.swift
//  tableViewDemo
//
//  Created by Enyedi, Robert on 11/14/14.
//  Copyright (c) 2014 codepath. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    var users:[[String:String]]!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        users = [
                ["name":"sky halud", "hometown":"Carei, essemm"],
            ["name":"sky halud2", "hometown":"Carei2, essemm"],
            ["name":"sky halud3", "hometown":"Carei3, essemm"]
                ]
        
        tableView.dataSource = self
        tableView.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return users.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCellWithIdentifier("UserCell") as UserCell
        
        var user = users[indexPath.row]
        
        cell.nameLabel.text = user["name"]
        cell.hometownLabel.text = user["hometown"]
        
        return cell
    }
}

