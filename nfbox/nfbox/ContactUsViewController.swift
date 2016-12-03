//
//  ContactUsViewController.swift
//  nfbox
//
//  Created by Mohammad Jedari on 12/1/16.
//  Copyright © 2016 tds. All rights reserved.
//

import UIKit

class ContactUsViewController: ViewController {


    
 
    @IBOutlet weak var FeedBack: UIView!
    
    @IBOutlet weak var ReportBug: UIView!
 
    @IBOutlet weak var segmentedControl: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        FeedBack.isHidden = false
        ReportBug.isHidden = true
    }
   
    @IBAction func indexChanged(_ sender: UISegmentedControl) {
        switch segmentedControl.selectedSegmentIndex
        {
        case 0:
            FeedBack.isHidden = false
            ReportBug.isHidden = true
        case 1:
            FeedBack.isHidden = true
            ReportBug.isHidden = false
        default:
            break;
        }
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func dismissContactUs(_ sender: UIBarButtonItem) {
        self.dismiss(animated: true, completion: nil)
    }

}
