//
//  UpdateInfoPresentationController.swift
//  nfbox
//
//  Created by Mohammad Jedari on 12/7/16.
//  Copyright © 2016 tds. All rights reserved.
//

import UIKit

class UpdateInfoPresentationController: UIPresentationController, UIAdaptivePresentationControllerDelegate {
   
    var chromeView: UIView = UIView()
    
    override init(presentedViewController: UIViewController, presenting presentingViewController: UIViewController!) {
        super.init(presentedViewController: presentedViewController, presenting: presentingViewController)
        chromeView.backgroundColor = UIColor(white:0.0, alpha:0.4)
        chromeView.alpha = 0.0
        
        let tap = UITapGestureRecognizer(target: self, action: Selector(("chromeViewTapped:")))
        chromeView.addGestureRecognizer(tap)
    }
    
    func chromeViewTapped(gesture: UIGestureRecognizer) {
        if (gesture.state == UIGestureRecognizerState.ended) {
            presentingViewController.dismiss(animated: true, completion: nil)
        }
    }

    func frameOfPresentedViewInContainerView(for controller: UIPresentationController) -> CGRect {
        var presentedViewFrame = CGRect.zero
        let containerBounds = containerView?.bounds
        presentedViewFrame.size = sizeForChildContentContainer(container: presentedViewController, withParentContainerSize: (containerBounds?.size)!)
        presentedViewFrame.origin.x = (containerBounds?.size.width)! - presentedViewFrame.size.width
        
        return presentedViewFrame
    }
    
    func sizeForChildContentContainer(container: UIContentContainer, withParentContainerSize parentSize: CGSize) -> CGSize {
            return CGSize(width: CGFloat((floorf(Float(parentSize.width / 3.0)))), height: parentSize.height)
    }
    override func presentationTransitionWillBegin() {
        chromeView.frame = (self.containerView?.bounds)!
        chromeView.alpha = 0.0
        containerView?.insertSubview(chromeView, at:0)
        let coordinator = presentedViewController.transitionCoordinator
        if (coordinator != nil) {
            coordinator!.animate(alongsideTransition: {
                (context:UIViewControllerTransitionCoordinatorContext!) -> Void in
                self.chromeView.alpha = 1.0
                }, completion:nil)
        } else {
            chromeView.alpha = 1.0
        }
    }
    override func dismissalTransitionWillBegin() {
        let coordinator = presentedViewController.transitionCoordinator
        if (coordinator != nil) {
            coordinator!.animate(alongsideTransition: {
                (context:UIViewControllerTransitionCoordinatorContext!) -> Void in
                self.chromeView.alpha = 0.0
                }, completion:nil)
        } else {
            chromeView.alpha = 0.0
        }
    }
    func shouldPresentInFullscreen(for controller: UIPresentationController) -> Bool {
        return true
    }
    func adaptivePresentationStyle(for controller: UIPresentationController) -> UIModalPresentationStyle {
        return UIModalPresentationStyle.fullScreen
    }
    

}
