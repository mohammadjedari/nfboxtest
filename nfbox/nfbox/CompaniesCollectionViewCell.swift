//
//  CompaniesTableViewCell.swift
//  nfbox
//
//  Created by Mohammad Jedari on 10/24/16.
//  Copyright © 2016 tds. All rights reserved.
//

import UIKit

class CompaniesCollectionViewCell: UICollectionViewCell {
    // MARK: Properties
    
    
    @IBOutlet weak var companyTitle: UILabel!
    
    @IBOutlet weak var companyPicture: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
}
