//
//  PersonClassViewController.swift
//  Homework3RosterApp
//
//  Created by Francisco Ragland Jr on 9/28/15.
//  Copyright © 2015 Francisco Ragland. All rights reserved.
//

import UIKit



class PersonClassViewController: UIViewController, UITableViewDataSource {
    
    @IBOutlet weak var personTableView: UITableView!
    
    var peopleArray = [Person]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        personTableView.dataSource = self
        
        let firstPerson = Person(personFirstName: "Francisco", personLastName: "Ragland")
        let secondPerson = Person(personFirstName: "Roman", personLastName: "Salazar")
        let thirdPerson = Person(personFirstName: "Ean", personLastName: "Tatum")
        let fourthPerson = Person(personFirstName: "Marina", personLastName: "Sanchez")
        
        peopleArray.append(firstPerson)
        peopleArray.append(secondPerson)
        peopleArray.append(thirdPerson)
        peopleArray.append(fourthPerson)

        // Do any additional setup after loading the view.
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return peopleArray.count
    }
    //Gets called for every row that will be on screen
    //Gets called 4 times here
    //indexPath is referring to the row that this method is acting on
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        // Part 1 dequeue reusable cell
        let cell = tableView.dequeueReusableCellWithIdentifier("Person", forIndexPath: indexPath)
        // Part 2 configure cell
        let person = peopleArray[indexPath.row]
        cell.textLabel?.text = "\(person.firstName) \(person.lastName)"
        // Part 3 return the cell
        return cell
    }



}
