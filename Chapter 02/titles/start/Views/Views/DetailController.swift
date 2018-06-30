//
//  DetailController.swift
//  Views
//
//  Created by Todd Perkins on 10/10/17.
//  Copyright © 2017 Todd Perkins. All rights reserved.
//

import UIKit

class DetailController: UIViewController {
    @IBOutlet weak var label: UILabel!
    var detailText:String?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        // Reference navigation item, and never display large titles
    self.navigationItem.largeTitleDisplayMode = .never
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        if let t = detailText {
            label.text = t
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
