//
//  NFBExercisesViewController.swift
//  nfbox
//
//  Created by Mohammad Jedari on 10/30/16.
//  Copyright © 2016 tds. All rights reserved.
//

import UIKit
import Kingfisher
import Alamofire
import SwiftyJSON

class NFBExerciseViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {

    
    @IBOutlet weak var nfbExercisesCW: UICollectionView!
    
    var exerciseData : Array<NFBExercise> = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        nfbExercisesCW.delegate = self
        nfbExercisesCW.dataSource = self
        
        
        //        getDataFromURL()
        let items:[String]=["http://img.webmd.com/dtmcms/live/webmd/consumer_assets/site_images/article_thumbnails/slideshows/7_most_effective_exercises_slideshow/493x335_7_most_effective_exercises_slideshow.jpg","http://parssky.net/wp-content/uploads/2014/12/exercise-fitness_2.jpg","http://eattobeatmyastheniagravis.com/wp-content/uploads/2013/08/exercise-stretch.jpg","http://www.ucb.ac.uk/content/images/courses/sports-and-creative-services/sports-and-fitness.jpg","http://cdn-media-1.lifehack.org/wp-content/files/2012/12/fitness-equipments.jpg","http://img.wennermedia.com/social/m0316_hf_fitness_a-e063dd5e-a26e-417f-b748-283d47fc3457.jpg","http://cdn.techpp.com/wp-content/uploads/2012/12/fitness-juice.jpg","http://greatist.com/sites/default/files/styles/article_main/public/Fitness_Couple.jpg?itok=_dE1mnjT","http://static1.wareable.com/media/imager/14394-45afa10a6397825020d9791a2241183a.jpg","https://www.ymcamn.org/sites/default/files/styles/2013_masthead/public/crop/pictures/masthead_health_fitness.jpg?itok=bvx4nH4F","http://www.absworkouts.co.uk/wp-content/uploads/2016/09/six-pack-abs2.jpg","http://production-cms.s3-eu-central-1.amazonaws.com/wp-content/uploads/2016/03/07114554/rock-633x720.jpg"]
        for item in items  {
            let thisExercise = NFBExercise()
            thisExercise.exerciseThumb = item
            exerciseData.append(thisExercise)
        }
           doCollectionRefresh()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return exerciseData.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cellIdentifier = "ExerciseCollectionViewCell"
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellIdentifier, for:
            indexPath) as! ExerciseCollectionViewCell
        let exercise : NFBExercise = exerciseData[indexPath.row]
        let imgurl = URL(string: exercise.exerciseThumb)
        cell.exercisePicture.kf.setImage(with: imgurl)
        return cell
    }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let cellsAcross: CGFloat = 3
        let spaceBetweenCells: CGFloat = 3
        let dim = (nfbExercisesCW.bounds.width - 20 - (cellsAcross - 1) * spaceBetweenCells) / cellsAcross
        return CGSize(width: dim,height: dim)
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
    //        let exercises = JSON(data: data)
    //        for (_, exercises): (String, JSON) in Exercises{
    //            //print(advice["number"].string)
    //            let thisExercise = NFBExercise()
    //            thisExercise.exerciseThumb = exercise["thumb"].stringValue
    //            exerciseData.append(thisExercise)
    //        }
    func doCollectionRefresh() {
        DispatchQueue.main.async {
            self.nfbExercisesCW.reloadData()
            return
        }
    }
}

