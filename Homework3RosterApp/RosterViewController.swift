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
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        print("segue fired!")
        if segue.identifier == "ShowPersonDetail" {
            let destinationViewController = segue.destinationViewController as! PersonDetailViewController
            //which index path did they click on
            let selectedIndexPath = tableView.indexPathForSelectedRow //returns an optional because it might now exist
            //what row number?
            let selectedRow = selectedIndexPath!.row
            //Ok give me the object at this index
            let selectedName = names[selectedRow]
            
            destinationViewController.selectedName = selectedName
            destinationViewController.view.backgroundColor = UIColor.greenColor()
        } else if segue.identifier == "myOtherSegue" {
            //this code would customize based on going to a different view controller
        }
    }

    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return names.count
        
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        //part 1 - dequeue the cell
        let cell = tableView.dequeueReusableCellWithIdentifier("RosterCell", forIndexPath: indexPath)
        
        //part 2 - configure the cell
        let name = names[indexPath.row]
        cell.textLabel?.text = name
//        cell.textLabel?.text = "\(indexPath.row)"
        
        cell.backgroundColor = UIColor.whiteColor()
        if indexPath.row == 0 {
            cell.backgroundColor = UIColor.blueColor()
        }
        
        //part 3 - return the cell to the tableview
        return cell
    }
    
    
    


}
