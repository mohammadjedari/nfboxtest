//
//  NFBArchiveViewController.swift
//  nfbox
//
//  Created by Mohammad Jedari on 11/1/16.
//  Copyright © 2016 tds. All rights reserved.
//

import UIKit

class NFBArchiveViewController: UIViewController,UICollectionViewDelegate, UICollectionViewDataSource {


    @IBOutlet weak var nfbArchiveCW: UICollectionView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        nfbArchiveCW.delegate = self
        nfbArchiveCW.dataSource = self
        
//        getDataFromURL()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()

    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 7
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cellIdentifier = "ArchiveCollectionViewCell"
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellIdentifier, for: indexPath) as! ArchiveCollectionViewCell
        cell.layer.shadowColor = UIColor.black.cgColor
        cell.layer.shadowOpacity = 0.2
        cell.layer.shadowOffset = CGSize(width: 1, height: 1)
        cell.layer.shadowRadius = 1
        cell.layer.shadowPath = UIBezierPath(rect: cell.bounds).cgPath
        return cell
    }
}

