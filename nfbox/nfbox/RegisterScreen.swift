//
//  RegisterScreen.swift
//  nfbox
//
//  Created by Mohammad Jedari on 11/9/16.
//  Copyright © 2016 tds. All rights reserved.
//

import UIKit

class RegisterScreen: UIViewController {
    

    @IBOutlet var account: UIView!
    @IBOutlet var personal: UIView!
    @IBOutlet var subscription: UIView!
    @IBOutlet weak var back: UILabel!
    
    var myvar:Int = 5
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //        self.imageView.layer.cornerRadius = self.imageView.frame.size.width/2
    }
    
    
    
    @IBAction func accountBtn(_ sender: UIButton) {
        
    }
    @IBAction func personalBtn(_ sender: UIButton) {
        print(10)
        UIView.animate(withDuration: 0.5, animations: {
            self.account.alpha = 0.0
            self.personal.alpha = 1.0
            self.subscription.alpha = 0.0
        })
    }
    @IBAction func subscribtionBtn(_ sender: UIButton) {
        
    }
    
    
   
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

}
