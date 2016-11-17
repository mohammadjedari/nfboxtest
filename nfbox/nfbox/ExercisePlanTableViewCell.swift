//
//  ExercisePlanTableViewCell.swift
//  nfbox
//
//  Created by Mohammad Jedari on 11/17/16.
//  Copyright © 2016 tds. All rights reserved.
//

import UIKit

class ExercisePlanTableViewCell: UITableViewCell {

    @IBOutlet weak var workLabel: UILabel!
    
    @IBOutlet weak var setLabel: UILabel!
    
    @IBOutlet weak var detailLabel: UILabel!
    
    @IBOutlet weak var view: UIView!
  
        override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
