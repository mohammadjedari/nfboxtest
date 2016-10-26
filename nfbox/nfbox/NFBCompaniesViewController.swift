//
//  NFBCompaniesViewController.swift
//  nfbox
//
//  Created by Mohammad Jedari on 10/24/16.
//  Copyright © 2016 tds. All rights reserved.
//

import UIKit

class NFBCompaniesViewController: UIViewController,UICollectionViewDelegate, UICollectionViewDataSource {


    
    @IBOutlet weak var nfbCompaniesCW: UICollectionView!
    
    var companyData : Array<Dictionary<String, String>> = []
   
    
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
        let company : Dictionary<String, String> = companyData[indexPath.row]
        cell.companyTitle?.text = company["title"]
        loadImageFromUrl(url: "https://upload.wikimedia.org/wikipedia/commons/thumb/d/de/Steve_Jobs_with_red_shawl_edit2.jpg/168px-Steve_Jobs_with_red_shawl_edit2.jpg", view: cell.companyPicture)
        return cell
    }
    
    func getDataFromURL() {
        let scriptUrl = "https://dnfbox.herokuapp.com/companies/iran/"
        // Create NSURL Ibject
        let myUrl = NSURL(string: scriptUrl);
        
        // Creaste URL Request
        let request = NSMutableURLRequest(url: myUrl! as URL,
                                          cachePolicy: .reloadIgnoringLocalAndRemoteCacheData,
                                          timeoutInterval: 15.0);
        
        // Set request HTTP method to GET. It could be POST as well
        request.httpMethod = "GET"
        let task = URLSession.shared.dataTask(with: request as URLRequest) {
            data, response, error in
            
            // Check for error
            if (data?.count)! > 0 && error == nil{
                self.extractJSON(data: data! as NSData)
            } else if data?.count == 0 && error == nil{
                print("Nothing was downloaded")
            } else if error != nil{
                print("Error happened = \(error)")
            }
            
        }
        task.resume()
    }
    
    func extractJSON(data: NSData) {
        print("dfgvbxfgbv")
        var json: Array<AnyObject>!
        do {
            json = try JSONSerialization.jsonObject(with: data as Data, options: []) as? Array
            
        } catch let error as NSError {
            print(error.localizedDescription)
        }
        for company in json {
            var companyDic = Dictionary<String, String> ()
            companyDic["title"] = company["title"] as? String
            companyDic["thumb"] = company["thumb"] as? String
            companyData.append(companyDic)
        }
        print(companyData)
        doCollectionRefresh()
        
    }
    
    func doCollectionRefresh() {
        DispatchQueue.main.async {
            self.nfbCompaniesCW.reloadData()
            return
        }
    }
    
    func loadImageFromUrl(url: String, view: UIImageView){
        
        // Create Url from string
        let url = NSURL(string: url)!
        
        // Download task:
        // - sharedSession = global NSURLCache, NSHTTPCookieStorage and NSURLCredentialStorage objects.
        let task = URLSession.shared.dataTask(with: url as URL) { (responseData, responseUrl, error) -> Void in
            // if responseData is not null...
            if let data = responseData{
                
                // execute in UI thread
                DispatchQueue.main.async {
                    view.image = UIImage(data: data)
                    
                }
            }
        }
        
        // Run task
        task.resume()
    }
}
