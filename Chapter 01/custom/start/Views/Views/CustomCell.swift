//
//  CustomCell.swift
//  Views
//
//  Created by ROMELL  BOLTON on 6/30/18.
//  Copyright © 2018 Todd Perkins. All rights reserved.
//

import UIKit

class CustomCell: UITableViewCell {
 
    @IBOutlet weak var label: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
