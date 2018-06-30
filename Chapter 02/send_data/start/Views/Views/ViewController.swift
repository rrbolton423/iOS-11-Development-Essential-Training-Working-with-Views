//
//  ViewController.swift
//  Views
//
//  Created by Todd Perkins on 10/10/17.
//  Copyright © 2017 Todd Perkins. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    let data:[String] = ["Item 1", "Item 2", "Item 3"]
    
    // Create a variable that holds the text
    var selectedText:String = ""
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = data[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        // Get the Text selected
        selectedText = data[indexPath.row]
        
        // Perform transition when row is selected in TableView
        self.performSegue(withIdentifier: "showDetail", sender: nil)
    }
    
    // Happens before the segue occurs
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        // Reference the destination View Controller, and cast it as a
        // DetailController
        let detail = segue.destination as! DetailController
    
        // Send data to the Detail Controller
        detail.detailText = selectedText
    
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

