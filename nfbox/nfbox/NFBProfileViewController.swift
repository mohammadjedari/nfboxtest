//
//  NFBProfileViewController.swift
//  nfbox
//
//  Created by Mohammad Jedari on 11/2/16.
//  Copyright © 2016 tds. All rights reserved.
//

import UIKit

class NFBProfileViewController: UIViewController {

    @IBOutlet weak var profileImage: UIImageView!

   
    @IBOutlet weak var viewProfile: UIView!
    @IBOutlet weak var nutritionPlanBtn: UIButton!
    @IBOutlet weak var exercisePlanBtn: UIButton!
    @IBOutlet weak var doctorId: UILabel!
    @IBOutlet weak var archiveBtn: UIButton!
    @IBOutlet weak var viewGained1: UIView!
    @IBOutlet weak var viewGained2: UIView!
    @IBOutlet weak var viewWeight: UIView!
    @IBOutlet weak var viewGoal: UIView!
    @IBOutlet weak var viewBMI: UIView!
    @IBOutlet weak var progress: UIImageView!

    @IBOutlet weak var liveStreamBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        viewProfile.layer.shadowColor = UIColor.black.cgColor
        viewProfile.layer.shadowOpacity = 0.2
        viewProfile.layer.shadowOffset = CGSize(width: 1, height: 1)
        viewProfile.layer.shadowRadius = 1
        viewProfile.layer.shadowPath = UIBezierPath(rect: viewProfile.bounds).cgPath
        ////////////////////
        viewGained1.layer.shadowColor = UIColor.black.cgColor
        viewGained1.layer.shadowOpacity = 0.2
        viewGained1.layer.shadowOffset = CGSize(width: 0.5, height: 0.5)
        viewGained1.layer.shadowRadius = 4
        viewGained1.layer.shadowPath = UIBezierPath(rect: viewGained1.bounds).cgPath
        ////////////////////
        viewGained2.layer.shadowColor = UIColor.black.cgColor
        viewGained2.layer.shadowOpacity = 0.2
        viewGained2.layer.shadowOffset = CGSize(width: 0.5, height: 0.5)
        viewGained2.layer.shadowRadius = 4
        viewGained2.layer.shadowPath = UIBezierPath(rect: viewGained2.bounds).cgPath
        ////////////////////
        viewWeight.layer.shadowColor = UIColor.black.cgColor
        viewWeight.layer.shadowOpacity = 0.2
        viewWeight.layer.shadowOffset = CGSize(width: 0.5, height: 0.5)
        viewWeight.layer.shadowRadius = 4
        viewWeight.layer.shadowPath = UIBezierPath(rect: viewWeight.bounds).cgPath
        ////////////////////
        viewGoal.layer.shadowColor = UIColor.black.cgColor
        viewGoal.layer.shadowOpacity = 0.2
        viewGoal.layer.shadowOffset = CGSize(width: 0.5, height: 0.5)
        viewGoal.layer.shadowRadius = 4
        viewGoal.layer.shadowPath = UIBezierPath(rect: viewWeight.bounds).cgPath
        ////////////////////
        viewBMI.layer.shadowColor = UIColor.black.cgColor
        viewBMI.layer.shadowOpacity = 0.2
        viewBMI.layer.shadowOffset = CGSize(width: 0.5, height: 0.5)
        viewBMI.layer.shadowRadius = 4
        viewBMI.layer.shadowPath = UIBezierPath(rect: viewBMI.bounds).cgPath
        ////////////////////
        progress.layer.shadowColor = UIColor.black.cgColor
        progress.layer.shadowOpacity = 0.2
        progress.layer.shadowOffset = CGSize(width: 0.5, height: 0.5)
        progress.layer.shadowRadius = 3
        progress.layer.shadowPath = UIBezierPath(rect: progress.bounds).cgPath
        self.profileImage.layer.cornerRadius = self.profileImage.frame.size.width / 2;
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
