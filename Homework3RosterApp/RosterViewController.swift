//
//  rosterViewController.swift
//  Homework3RosterApp
//
//  Created by Francisco Ragland Jr on 9/24/15.
//  Copyright © 2015 Francisco Ragland. All rights reserved.
//

import UIKit

class RosterViewController: UIViewController, UITableViewDataSource {
    
    let names = ["Kame", "Russell", "Richard", "Beast", "Pete", "John"]

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        // Do any additional setup after loading the view.
    }

    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return names.count
        
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCellWithIdentifier("RosterCell", forIndexPath: indexPath)
        let name = names[indexPath.row]
        cell.textLabel?.text = name
//        cell.textLabel?.text = "\(indexPath.row)"
        
        cell.backgroundColor = UIColor.whiteColor()
        if indexPath.row == 0 {
            cell.backgroundColor = UIColor.blueColor()
        }
        return cell
    }
    
    
    


}
