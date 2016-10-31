//
//  RecipesCollectionViewCell.swift
//  nfbox
//
//  Created by Mohammad Jedari on 10/31/16.
//  Copyright © 2016 tds. All rights reserved.
//

import UIKit

class RecipesCollectionViewCell: UICollectionViewCell {
     // MARK: Properties
    
    
    @IBOutlet weak var RecipePicture: UIImageView!
    @IBOutlet weak var RecipeTitle: UILabel!
    @IBOutlet weak var RecipeDesc: UILabel!
    @IBOutlet weak var RecipeType: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
}
