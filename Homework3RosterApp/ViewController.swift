//
//  ViewController.swift
//  MyHomework2RosterApp
//
//  Created by Francisco Ragland Jr on 9/20/15.
//  Copyright © 2015 Francisco Ragland. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //Properties
    var myName = "Cisco"
    
    @IBOutlet weak var leftNumberLabel: UILabel!
    @IBOutlet weak var rightNumberLabel: UILabel!
    
    var indexOne = 0
    var indexTwo = 0
    
    var indexOneArray = [0, 1, 2, 3, 4, 5]
    var indexTwoArray = [100, 101, 102, 103, 104, 105]
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        leftNumberLabel.text = "\(indexOneArray[0])"
        rightNumberLabel.text = "\(indexTwoArray[0])"
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    //Actions
    
    @IBAction func leftNumberPlusButtonPressed(sender: AnyObject) {
        indexOne += 1
        if indexOne > 5 {
            indexOne = 0
        }
        leftNumberLabel.text = "\(indexOneArray[indexOne])"
        
    }
    @IBAction func rightNumberPlusButtonPressed(sender: AnyObject) {
        indexTwo += 1
        if rightNumberLabel.text == "\(105)" {
            indexTwo = 0
        }
        rightNumberLabel.text = "\(indexTwoArray[indexTwo])"
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}



