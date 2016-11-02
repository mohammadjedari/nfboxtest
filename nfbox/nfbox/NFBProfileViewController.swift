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

    @IBOutlet weak var nutritionPlanBtn: UIButton!
    @IBOutlet weak var exercisePlanBtn: UIButton!
    @IBOutlet weak var doctorId: UILabel!
    @IBOutlet weak var archiveBtn: UIButton!

    @IBOutlet weak var liveStreamBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.profileImage.layer.cornerRadius = self.profileImage.frame.size.width / 2;
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
