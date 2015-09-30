//
//  DemoViewController.swift
//  Homework3RosterApp
//
//  Created by Francisco Ragland Jr on 9/28/15.
//  Copyright © 2015 Francisco Ragland. All rights reserved.
//

import UIKit

class DemoViewController: UIViewController, UITableViewDataSource {
    
    
    
    @IBOutlet weak var demoTableView: UITableView!
    
    var gameCharacters = ["Megaman", "Link", "Mario", "Pikachu"]

    override func viewDidLoad() {
        super.viewDidLoad()
        demoTableView.dataSource = self
        // Do any additional setup after loading the view.
    }

    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return gameCharacters.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        //part 1 - dequeue resuable cell with identifier
        let cell = tableView.dequeueReusableCellWithIdentifier("DemoCell", forIndexPath: indexPath)
        //part 2 - configure the cell
        let character = gameCharacters[indexPath.row]
        cell.textLabel?.text = character
        
        if cell.textLabel?.text == "Megaman" {
            cell.backgroundColor = UIColor.blueColor()
        }
        
        if cell.textLabel?.text == "Link" {
            cell.backgroundColor = UIColor.greenColor()
        }
        
        if cell.textLabel?.text == "Mario" {
            cell.backgroundColor = UIColor.redColor()
        }
        
        if cell.textLabel?.text == "Pikachu" {
            cell.backgroundColor = UIColor.yellowColor()
        }
        
        //part 3 - return the cell
        
        return cell
    }
    



}
