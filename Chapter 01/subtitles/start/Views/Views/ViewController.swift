//
//  ViewController.swift
//  Views
//
//  Created by Todd Perkins on 10/10/17.
//  Copyright © 2017 Todd Perkins. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {
    let data:[String] = ["Item 1", "Item 2", "Item 3"]
    let subs:[String] = ["sub 1", "sub 2", "sub 3"]
    
     // Create array of UI Color objects
    let colors:[UIColor] = [.red, .green, .blue]

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = data[indexPath.row]
        
        // Set the text of the subtitles
        cell.detailTextLabel?.text = subs[indexPath.row]
        
        // Supply image to cell via code
        cell.imageView?.image = UIImage(named: "star")?.withRenderingMode(.alwaysTemplate)
        
        // Change the color of the images
        cell.imageView?.tintColor = colors[indexPath.row]
        
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

