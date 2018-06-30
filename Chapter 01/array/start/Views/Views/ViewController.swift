//
//  ViewController.swift
//  Views
//
//  Created by Todd Perkins on 10/10/17.
//  Copyright © 2017 Todd Perkins. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {
    
    // Create array
    let data:[String] = ["Item 1", "Item 2", "Item 3"]
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        // Return the amount of data in the array
        return data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        
        // Get the current row from the datasource
        // and set it's data value
        cell.textLabel?.text = data[indexPath.row]
        
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

