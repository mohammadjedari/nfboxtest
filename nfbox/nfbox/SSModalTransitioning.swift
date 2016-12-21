//
//  SSModalTransitioning.swift
//  nfbox
//
//  Created by Mohammad Jedari on 12/21/16.
//  Copyright © 2016 tds. All rights reserved.
//

import UIKit

class SSModalTransitioning: NSObject, UIViewControllerTransitioningDelegate {

    
    func presentationController(forPresented presented: UIViewController, presenting: UIViewController?, source: UIViewController) -> UIPresentationController? {
        let presentationController = SSModalPresentationController(presentedViewController:presented, presenting:presenting)
        
        return presentationController
    }
    
    
    func animationController(forPresented presented: UIViewController, presenting: UIViewController, source: UIViewController) -> UIViewControllerAnimatedTransitioning? {
        let animationController = SSModalAnimatedTransitioning()
        animationController.isPresentation = true
        return animationController
    }
    
    func animationController(forDismissed dismissed: UIViewController) -> UIViewControllerAnimatedTransitioning? {
        let animationController = SSModalAnimatedTransitioning()
        animationController.isPresentation = false
        return animationController
    }
    
    
}
