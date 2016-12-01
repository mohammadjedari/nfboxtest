//
//  ContactUsViewController.swift
//  nfbox
//
//  Created by Mohammad Jedari on 12/1/16.
//  Copyright © 2016 tds. All rights reserved.
//

import UIKit

class ContactUsViewController: ViewController {


    
    @IBOutlet var FeedBack: UIView!
    
    @IBOutlet weak var ReportBug: UIView!

    override func viewDidLoad() {
        super.viewDidLoad()
    }
 
    @IBOutlet weak var segmentedControl: UISegmentedControl!
   
    @IBAction func indexChanged(_ sender: UISegmentedControl) {
        switch segmentedControl.selectedSegmentIndex
        {
        case 0:
            NSLog("FeedBack selected")
            //show popular view
            FeedBack.isHidden = false
            ReportBug.isHidden = true
        case 1:
            NSLog("Report Bug selected")
            //show history view
            FeedBack.isHidden = true
            ReportBug.isHidden = false
        default:
            break;
        }
    }
    let viewControllerIdentifiers = ["FeedBack"
    , "Report Bug"]  // storyboard identifiers for the child view controllers
    
    @IBAction func didChangeValue(_ sender: UISegmentedControl) {
        let newController = (storyboard?.instantiateViewController(withIdentifier: viewControllerIdentifiers[sender.selectedSegmentIndex]))! as UIViewController
        let oldController = childViewControllers.last! as UIViewController
        
        oldController.willMove(toParentViewController: nil)
        addChildViewController(newController)
        newController.view.frame = oldController.view.frame
        
        transition(from: oldController, to: newController, duration: 0.25, options: .transitionCrossDissolve, animations:{ () -> Void in
            // nothing needed here
            }, completion: { (finished) -> Void in
                oldController.removeFromParentViewController()
                newController.didMove(toParentViewController: self)
        })
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
