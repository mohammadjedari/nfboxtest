//
//  RegisterScreen.swift
//  nfbox
//
//  Created by Mohammad Jedari on 11/9/16.
//  Copyright © 2016 tds. All rights reserved.
//

import UIKit

class RegisterScreen: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    

    @IBOutlet weak var registerView: UIView!
    @IBOutlet weak var account: UIView!
    @IBOutlet weak var personal: UIView!
    @IBOutlet weak var subscription: UIView!
    @IBOutlet weak var segmentedControl: UISegmentedControl!
    @IBOutlet weak var profilePicture: UIImageView!
    
    @IBAction func selectImageFromPhotoLibrary(_ sender: UITapGestureRecognizer) {
        let imagePickerController = UIImagePickerController()
        imagePickerController.sourceType = .photoLibrary
        imagePickerController.delegate = self
        present(imagePickerController, animated: true, completion: nil)
    }
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        // Dismiss the picker if the user canceled.
        dismiss(animated: true, completion: nil)
    }
    
    private func imagePickerController(picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : AnyObject]) {
       
        let selectedImage = info[UIImagePickerControllerOriginalImage] as! UIImage
        
        profilePicture.image = selectedImage
        
        dismiss(animated: true, completion: nil)
    }
   
    
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

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

}
