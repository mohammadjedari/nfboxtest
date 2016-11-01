//
//  ArchiveCollectionViewCell.swift
//  nfbox
//
//  Created by Mohammad Jedari on 11/1/16.
//  Copyright © 2016 tds. All rights reserved.
//

import UIKit

class ArchiveCollectionViewCell: UICollectionViewCell {
    
    
    @IBOutlet weak var archivePicture: UIImageView!
    
    @IBOutlet weak var archiveDate: UILabel!
    
    @IBOutlet weak var archiveDuration: UILabel!
    
    @IBOutlet weak var archiveDoctor: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
}
