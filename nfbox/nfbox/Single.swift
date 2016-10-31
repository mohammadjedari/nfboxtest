//
//  Single.swift
//  nfbox
//
//  Created by Mohammad Jedari on 10/31/16.
//  Copyright © 2016 tds. All rights reserved.
//

import UIKit

class  Single: UIViewController {
    
    @IBOutlet weak var SingleTitle: UILabel!
    @IBOutlet weak var SingleType: UILabel!
    @IBOutlet weak var SinglePicture: UIImageView!
    @IBOutlet weak var SingleWeb: UIWebView!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
