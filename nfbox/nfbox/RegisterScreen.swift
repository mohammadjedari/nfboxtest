//
//  RegisterScreen.swift
//  nfbox
//
//  Created by Mohammad Jedari on 11/9/16.
//  Copyright © 2016 tds. All rights reserved.
//

import UIKit

class RegisterScreen: UIViewController {
    

    @IBOutlet weak var account: UIView!
    @IBOutlet weak var personal: UIView!
    @IBOutlet weak var subscription: UIView!
    @IBOutlet weak var segmentedControl: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func indexChanged(_ sender: UISegmentedControl) {
        switch segmentedControl.selectedSegmentIndex
        {
        case 0:
            account.isHidden = false
            personal.isHidden = true
            subscription.isHidden = true
        case 1:
            account.isHidden = true
            personal.isHidden = false
            subscription.isHidden = true
        case 2:
            account.isHidden = true
            personal.isHidden = true
            subscription.isHidden = false
        default:
            break;
        }
    }
    
    @IBAction func dismissRegister(_ sender: UIButton) {
         self.dismiss(animated: true, completion: nil)
    }
   
    
    
   
//    @IBAction func personalBtn(_ sender: UIButton) {
//        print(10)
//        UIView.animate(withDuration: 0.5, animations: {
//            self.account.alpha = 0.0
//            self.personal.alpha = 1.0
//            self.subscription.alpha = 0.0
//        })
//    }
   
    
   
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

}
