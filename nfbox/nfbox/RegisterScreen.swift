//
//  RegisterScreen.swift
//  nfbox
//
//  Created by Mohammad Jedari on 11/9/16.
//  Copyright © 2016 tds. All rights reserved.
//

import UIKit

class RegisterScreen: UIViewController {
    
    
 
    @IBOutlet var Account: UIView!
    @IBOutlet var personal: UIView!
    @IBOutlet var subscription: UIView!
    @IBAction func next(_ sender: AnyObject) {
    }
    @IBOutlet weak var back: UILabel!
    @IBOutlet weak var imageView: UIView!
    @IBOutlet weak var image: UIImageView!
    @IBAction func backBtn(_ sender: AnyObject) {
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.imageView.layer.cornerRadius = self.imageView.frame.size.width/2
    }
    
   
    @IBAction func showComponent(_ sender: AnyObject) {
        if sender.selectedSegmentIndex == 0 {
            UIView.animate(withDuration: 0.5, animations: {
                self.Account.alpha = 1
                self.personal.alpha = 0
                self.subscription.alpha = 0
            })
        }
        if sender.selectedSegmentIndex == 1 {
            UIView.animate(withDuration: 0.5, animations: {
                self.Account.alpha = 0
                self.personal.alpha = 1
                self.subscription.alpha = 0
            })
        }
        if sender.selectedSegmentIndex == 2 {
            UIView.animate(withDuration: 0.5, animations: {
                self.Account.alpha = 0
                self.personal.alpha = 0
                self.subscription.alpha = 1
            })
    }
    
        }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
}
