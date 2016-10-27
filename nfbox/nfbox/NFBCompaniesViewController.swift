//
//  NFBCompaniesViewController.swift
//  nfbox
//
//  Created by Mohammad Jedari on 10/24/16.
//  Copyright © 2016 tds. All rights reserved.
//

import UIKit
import Alamofire
import Kingfisher
import SwiftyJSON

class NFBCompaniesViewController: UIViewController,UICollectionViewDelegate, UICollectionViewDataSource {


    
    @IBOutlet weak var nfbCompaniesCW: UICollectionView!
    
    var companyData : Array<NFBCompany> = []
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        nfbCompaniesCW.delegate = self
        nfbCompaniesCW.dataSource = self
        
        getDataFromURL()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return companyData.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cellIdentifier = "CompaniesCollectionViewCell"
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellIdentifier, for: indexPath) as! CompaniesCollectionViewCell
        let company : NFBCompany = companyData[indexPath.row]
        cell.companyTitle?.text = company.companyName
        cell.companyNumber?.text = company.companyNumber
        cell.companyInstaId?.text = company.companyInstaId
        cell.companyType?.text = company.companyType
        let imgurl = URL(string: company.companyThumb)
        cell.companyPicture.kf.setImage(with: imgurl)
        cell.layer.shadowColor = UIColor.black.cgColor
        cell.layer.shadowOpacity = 0.2
        cell.layer.shadowOffset = CGSize(width: 1, height: 1)
        cell.layer.shadowRadius = 1
        cell.layer.shadowPath = UIBezierPath(rect: cell.bounds).cgPath
        return cell
    }
    
    func getDataFromURL() {
        let scriptUrl = "https://dnfbox.herokuapp.com/companies/iran/"
        
        //Alamofire
        Alamofire.request(scriptUrl).responseData { response in
            if let data = response.result.value {
                self.extractJSON(data: data)
            }
        }
    }
    
    func extractJSON(data: Data) {
        print("hkvghvtg")
        let companies = JSON(data: data)
        for (_, company): (String, JSON) in companies {
            //print(company["number"].string)
            let thisCompany = NFBCompany()
            thisCompany.companyId = company["id"].stringValue
            thisCompany.companyName = company["title"].stringValue
            thisCompany.companyThumb = company["thumb"].stringValue
            thisCompany.companyType = company["type"].stringValue
            thisCompany.companyInstaId = company["instaid"].stringValue
            thisCompany.companyNumber = company["number"].stringValue
            companyData.append(thisCompany)
        }
        doCollectionRefresh()
    }
    
    func doCollectionRefresh() {
        DispatchQueue.main.async {
            self.nfbCompaniesCW.reloadData()
            return
        }
    }
}
