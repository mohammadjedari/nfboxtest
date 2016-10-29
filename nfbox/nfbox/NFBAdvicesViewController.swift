//
//  NFBAdvicesViewController.swift
//  nfbox
//
//  Created by Mohammad Jedari on 10/29/16.
//  Copyright © 2016 tds. All rights reserved.
//

import UIKit
import Kingfisher
import Alamofire
import SwiftyJSON

class NFBAdvicesViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource  {
    
    
    @IBOutlet weak var nfbAdvicesCW: UICollectionView!
    
    var adviceData : Array<NFBAdvice> = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        nfbAdvicesCW.delegate = self
        nfbAdvicesCW.dataSource = self
        
//        getDataFromURL()
        let items:[String]=["https://www.ywcampls.org/_asset/x953xn/Fitness-page-image.jpg","http://www.fitdisneymom.com/wp-content/uploads/2015/10/stockpic.png","https://static.squarespace.com/static/541b9938e4b0eb59dea962f5/t/5420e311e4b0a0d6201da11a/1411441425047/fitness-nail.jpg","http://www.ucb.ac.uk/content/images/courses/sports-and-creative-services/sports-and-fitness.jpg","http://cdn-media-1.lifehack.org/wp-content/files/2012/12/fitness-equipments.jpg","http://img.wennermedia.com/social/m0316_hf_fitness_a-e063dd5e-a26e-417f-b748-283d47fc3457.jpg","http://cdn.techpp.com/wp-content/uploads/2012/12/fitness-juice.jpg","http://greatist.com/sites/default/files/styles/article_main/public/Fitness_Couple.jpg?itok=_dE1mnjT","http://static1.wareable.com/media/imager/14394-45afa10a6397825020d9791a2241183a.jpg","https://www.ymcamn.org/sites/default/files/styles/2013_masthead/public/crop/pictures/masthead_health_fitness.jpg?itok=bvx4nH4F","http://www.absworkouts.co.uk/wp-content/uploads/2016/09/six-pack-abs2.jpg"]
        for item in items  {
            let thisAdvice = NFBAdvice()
            thisAdvice.adviceThumb = item
            adviceData.append(thisAdvice)
            doCollectionRefresh()

            
        }
        

    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return adviceData.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cellIdentifier = "AdvicesCollectionViewCell"
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellIdentifier, for:
            indexPath) as! AdvicesCollectionViewCell
        let advice : NFBAdvice = adviceData[indexPath.row]
        let imgurl = URL(string: advice.adviceThumb)
         cell.advicePicture.kf.setImage(with: imgurl)
        return cell
    }
//    
//    func getDataFromURL() {
//        let scriptUrl = "https://dnfbox.herokuapp.com/companies/iran/"
//    
//        //Alamofire
//        Alamofire.request(scriptUrl).responseData { response in
//            if let data = response.result.value {
//                self.extractJSON(data: data)
//            }
//        }
//    }
//    
//    func extractJSON(data: Data) {
//        let advices = JSON(data: data)
//        for (_, advices): (String, JSON) in advices {
//            //print(advice["number"].string)
//            let thisAdvice = NFBAdvice()
//            thisAdvice.adviceThumb = advice["thumb"].stringValue
//            adviceData.append(thisAdvice)
//        }
    func doCollectionRefresh() {
        DispatchQueue.main.async {
            self.nfbAdvicesCW.reloadData()
            return
        }
    }
}

