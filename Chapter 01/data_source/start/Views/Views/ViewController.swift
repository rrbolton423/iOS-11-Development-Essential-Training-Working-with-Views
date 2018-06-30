//
//  ViewController.swift
//  Views
//
//  Created by Todd Perkins on 10/10/17.
//  Copyright © 2017 Todd Perkins. All rights reserved.
//

import UIKit

class ViewController: UIViewController,
UITableViewDataSource { // Tell class it can be a UITableViewDataSource
    
    // Define how many rows are in each section
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    // Put the data into the table view cell
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        // Create a Cell
        let cell = UITableViewCell()
        
        // Put text into the current cell
        cell.textLabel?.text = "Cell item"
        
        // Return the cell
        return cell
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

