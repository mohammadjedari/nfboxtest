//
//  UpdateInfoViewController.swift
//  nfbox
//
//  Created by Mohammad Jedari on 12/7/16.
//  Copyright © 2016 tds. All rights reserved.
//

import UIKit

class UpdateInfoViewController: UIViewController {
   	
    let exampleTransitionDelegate = UpdateInfoTransitioningDelegate()
    
    @IBAction func infoButtonWasTapped(_ sender: UIButton) {
        transitioningDelegate = exampleTransitionDelegate
        let vc = UpdateInfoViewController()
        vc.transitioningDelegate = exampleTransitionDelegate
        present(vc, animated: true, completion: nil)
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
