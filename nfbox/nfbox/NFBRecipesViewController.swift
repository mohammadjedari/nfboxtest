//
//  NFBRecipesViewController.swift
//  nfbox
//
//  Created by Mohammad Jedari on 10/31/16.
//  Copyright © 2016 tds. All rights reserved.
//

import UIKit
import Alamofire
import Kingfisher
import SwiftyJSON




class NFBRecipesViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
    @IBOutlet weak var nfbRecipesCW: UICollectionView!
    
    var recipeData : Array<NFBRecipe> = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        nfbRecipesCW.delegate = self
        nfbRecipesCW.dataSource = self
        
        getDataFromURL()
//        let items:[String]=["https://www.ywcampls.org/_asset/x953xn/Fitness-page-image.jpg","http://www.fitdisneymom.com/wp-content/uploads/2015/10/stockpic.png","https://static.squarespace.com/static/541b9938e4b0eb59dea962f5/t/5420e311e4b0a0d6201da11a/1411441425047/fitness-nail.jpg","http://www.ucb.ac.uk/content/images/courses/sports-and-creative-services/sports-and-fitness.jpg","http://cdn-media-1.lifehack.org/wp-content/files/2012/12/fitness-equipments.jpg","http://img.wennermedia.com/social/m0316_hf_fitness_a-e063dd5e-a26e-417f-b748-283d47fc3457.jpg","http://cdn.techpp.com/wp-content/uploads/2012/12/fitness-juice.jpg","http://greatist.com/sites/default/files/styles/article_main/public/Fitness_Couple.jpg?itok=_dE1mnjT","http://static1.wareable.com/media/imager/14394-45afa10a6397825020d9791a2241183a.jpg","https://www.ymcamn.org/sites/default/files/styles/2013_masthead/public/crop/pictures/masthead_health_fitness.jpg?itok=bvx4nH4F","http://www.absworkouts.co.uk/wp-content/uploads/2016/09/six-pack-abs2.jpg"]
//        for item in items  {
//            let thisRecipe = NFBRecipe()
//            thisRecipe.recipeThumb = item
//            recipeData.append(thisRecipe)
//        }
    
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return recipeData.count
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cellIdentifier = "RecipesCollectionViewCell"
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellIdentifier, for: indexPath) as! RecipesCollectionViewCell
        let recipe : NFBRecipe = recipeData[indexPath.row]
        cell.RecipeTitle?.text = recipe.recipeTitle
        cell.RecipeType?.text = recipe.recipeType
        cell.RecipeDesc?.text = recipe.recipeDesc
        let imgurl = URL(string: recipe.recipeThumb)
        cell.RecipePicture.kf.setImage(with: imgurl)
        cell.layer.shadowColor = UIColor.black.cgColor
        cell.layer.shadowOpacity = 0.2
        cell.layer.shadowOffset = CGSize(width: 1, height: 1)
        cell.layer.shadowRadius = 1
        cell.layer.shadowPath = UIBezierPath(rect: cell.bounds).cgPath
        return cell
    }
//    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
//        let cellsAcross: CGFloat = 2
//        let spaceBetweenCells: CGFloat = 2
//        let dim = (nfbRecipesCW.bounds.width - 20 - (cellsAcross - 1) * spaceBetweenCells) / cellsAcross
//        return CGSize(width: dim,height: dim)
//    }
    //
        func getDataFromURL() {
            let scriptUrl = "https://dnfbox.herokuapp.com/recipes"
    
            //Alamofire
            Alamofire.request(scriptUrl).responseData { response in
                if let data = response.result.value {
                    self.extractJSON(data: data)
                }
            }
        }
    
        func extractJSON(data: Data) {
            let Recipes = JSON(data: data)
            for (_, recipes): (String, JSON) in Recipes {
                let thisRecipe = NFBRecipe()
                thisRecipe.recipeId = recipes["id"].stringValue
                thisRecipe.recipeTitle = recipes["title"].stringValue
                thisRecipe.recipeDesc = recipes["desc"].stringValue
                thisRecipe.recipeType = recipes["type"].stringValue
                thisRecipe.recipeThumb = recipes["thumb"].stringValue
                recipeData.append(thisRecipe)
            }
            doCollectionRefresh()
        }
    func doCollectionRefresh() {
        DispatchQueue.main.async {
            self.nfbRecipesCW.reloadData()
            return
        }
    }
}
