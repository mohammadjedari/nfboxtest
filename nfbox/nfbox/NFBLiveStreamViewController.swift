//
//  NFBLiveStreamViewController.swift
//  nfbox
//
//  Created by Mohammad Jedari on 11/1/16.
//  Copyright © 2016 tds. All rights reserved.
//

import UIKit
import AVKit
import AVFoundation

class NFBLiveStreamViewController: UIViewController {
    
    

   
    @IBOutlet weak var doctorBackground: UIImageView!
    @IBOutlet weak var doctorName: UILabel!
    @IBOutlet weak var doctorImage: UIImageView!
    var image = UIImage(named: "newtopdoc")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        doctorImage.layer.borderColor = UIColor(red: 1.0, green: 0.494, blue: 0.078, alpha: 1.0).cgColor
        doctorImage.layer.borderWidth = 6
        doctorImage.contentMode = .scaleAspectFill
        doctorImage.image = image
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
