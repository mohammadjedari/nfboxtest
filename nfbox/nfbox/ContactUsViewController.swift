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
    
    @IBOutlet weak var fbView: UIView!
   
    @IBOutlet weak var twitterView: UIView!
    
    @IBOutlet weak var instaView: UIView!
    
    @IBOutlet weak var youtubeView: UIView!
    
    @IBOutlet weak var feedbackTextView: UITextView!
    
    @IBOutlet weak var descriptionTextView: UITextView!

    
    override func viewDidLoad() {
        super.viewDidLoad()
//          FeedBack.isHidden = false
//          ReportBug.isHidden = true
//        
//        fbView.layer.shadowColor = UIColor.black.cgColor
//        fbView.layer.shadowOpacity = 0.2
//        fbView.layer.shadowOffset = CGSize(width: 1, height: 1)
//        fbView.layer.shadowRadius = 4
//        fbView.layer.shadowPath = UIBezierPath(rect: fbView.bounds).cgPath
//        
//        twitterView.layer.shadowColor = UIColor.black.cgColor
//        twitterView.layer.shadowOpacity = 0.2
//        twitterView.layer.shadowOffset = CGSize(width: 1, height: 1)
//        twitterView.layer.shadowRadius = 4
//        twitterView.layer.shadowPath = UIBezierPath(rect: twitterView.bounds).cgPath
//        
//        instaView.layer.shadowColor = UIColor.black.cgColor
//        instaView.layer.shadowOpacity = 0.2
//        instaView.layer.shadowOffset = CGSize(width: 1, height: 1)
//        instaView.layer.shadowRadius = 4
//        instaView.layer.shadowPath = UIBezierPath(rect: instaView.bounds).cgPath
//        
//        youtubeView.layer.shadowColor = UIColor.black.cgColor
//        youtubeView.layer.shadowOpacity = 0.2
//        youtubeView.layer.shadowOffset = CGSize(width: 1, height: 1)
//        youtubeView.layer.shadowRadius = 4
//        youtubeView.layer.shadowPath = UIBezierPath(rect: youtubeView.bounds).cgPath
//        
//        feedbackTextView.layer.shadowColor = UIColor.black.cgColor
//        feedbackTextView.layer.shadowOpacity = 0.2
//        feedbackTextView.layer.shadowOffset = CGSize(width: 1, height: 1)
//        feedbackTextView.layer.shadowRadius = 4
//        feedbackTextView.layer.shadowPath = UIBezierPath(rect: feedbackTextView.bounds).cgPath
//        
//        descriptionTextView.layer.shadowColor = UIColor.black.cgColor
//        descriptionTextView.layer.shadowOpacity = 0.2
//        descriptionTextView.layer.shadowOffset = CGSize(width: 1, height: 1)
//        descriptionTextView.layer.shadowRadius = 4
//        descriptionTextView.layer.shadowPath = UIBezierPath(rect: descriptionTextView.bounds).cgPath
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
