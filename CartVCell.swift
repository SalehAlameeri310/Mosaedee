//
//  CartVCell.swift
//  Mosaedee
//
//  Created by Saleh Alameeri on 7/19/20.
//  Copyright © 2020 Saleh Alameeri. All rights reserved.
//

import UIKit

class CartVCell: UITableViewCell {
    @IBOutlet weak var addedWorkerLabel: UILabel!
    @IBOutlet weak var addedWorkerLastName: UILabel!
    @IBOutlet weak var addeWorkerCart: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
