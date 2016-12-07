//
//  UpdateInfoTransitioningDelegate.swift
//  nfbox
//
//  Created by Mohammad Jedari on 12/7/16.
//  Copyright © 2016 tds. All rights reserved.
//

import UIKit

class UpdateInfoTransitioningDelegate: NSObject, UIViewControllerTransitioningDelegate {
  
    func presentationControllerForPresentedViewController(presented: UIViewController, presentingViewController presenting: UIViewController!, sourceViewController source: UIViewController) -> UIPresentationController? {
        let presentationController = UpdateInfoPresentationController(presentedViewController:presented, presenting:presenting)
        
        return presentationController
    }
    
    func animationControllerForPresentedController(presented: UIViewController, presentingController presenting: UIViewController, sourceController source: UIViewController) -> UIViewControllerAnimatedTransitioning? {
        let animationController = UpdateInfoAnimatedTransitioning()
        animationController.isPresentation = true
        return animationController
    }
    
    func animationControllerForDismissedController(dismissed: UIViewController) -> UIViewControllerAnimatedTransitioning? {
        let animationController = UpdateInfoAnimatedTransitioning()
        animationController.isPresentation = false
        return animationController
    }

}
