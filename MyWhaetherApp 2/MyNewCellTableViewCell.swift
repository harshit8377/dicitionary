//
//  MyNewCellTableViewCell.swift
//  MyWhaetherApp 2
//
//  Created by iFlame on 9/20/17.
//  Copyright © 2017 iFlame. All rights reserved.
//

import UIKit

class MyNewCellTableViewCell: UITableViewCell {
    
    
    @IBOutlet weak var lblCity: UILabel!

    @IBOutlet weak var lblTem: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
