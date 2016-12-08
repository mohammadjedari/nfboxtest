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
    @IBAction func infoButton(_ sender: AnyObject) {
        var usernameTextField: UITextField?
        var passwordTextField: UITextField?
        
    
        let alertController = UIAlertController(
            title: "Log in",
            message: "Please enter your credentials",
            preferredStyle: UIAlertControllerStyle.alert)
        
    
        let loginAction = UIAlertAction(
        title: "Log in", style: UIAlertActionStyle.default) {
            (action) -> Void in
            
            if let username = usernameTextField?.text {
                print(" Username = \(username)")
            } else {
                print("No Username entered")
            }
            
            if let password = passwordTextField?.text {
                print("Password = \(password)")
            } else {
                print("No password entered")
            }
        }
        
        
        alertController.addTextField {
            (txtUsername) -> Void in
            usernameTextField = txtUsername
            usernameTextField!.placeholder = "Your username here"
        }
        
        alertController.addTextField {
            (txtPassword) -> Void in
            passwordTextField = txtPassword
            passwordTextField!.isSecureTextEntry = true
            passwordTextField!.placeholder = "Your password here"
        }
        
        self.present(alertController, animated: true, completion: nil)
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
