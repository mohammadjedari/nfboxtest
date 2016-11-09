//
//  LoginScreen.swift
//  nfbox
//
//  Created by Mohammad Jedari on 11/9/16.
//  Copyright © 2016 tds. All rights reserved.
//

import UIKit

class LoginScreen: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var logo: UIImageView!
    @IBOutlet weak var Id: UILabel!
    @IBOutlet weak var userImg: UIImageView!
    @IBOutlet weak var usernameText: UITextField!
    @IBOutlet weak var passwordText: UITextField!
    @IBOutlet weak var lockedimg: UIImageView!
    @IBAction func signInBtn(_ sender: AnyObject) {
    }
    @IBAction func signUpBtn(_ sender: AnyObject) {
    }

    @IBAction func skipBtn(_ sender: AnyObject) {
    }
   
   
    @IBAction func forgetPassBtn(_ sender: AnyObject) {
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        usernameText.delegate = self
        passwordText.delegate = self

    }
    
    private func textFieldShouldReturn(textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }

    override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    }
}
