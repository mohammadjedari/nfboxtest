//
//  NFBTabBarController.swift
//  nfbox
//
//  Created by Mohammad Jedari on 10/24/16.
//  Copyright © 2016 tds. All rights reserved.
//

import UIKit

class NFBTabBarController: UITabBarController {
    
    override func viewDidLoad() {
        
        
        let orange = UIColor(red: 1.0, green: 0.494, blue: 0.078, alpha: 1.0)
        
        UITabBar.appearance().tintColor = UIColor.white
        
        
        
        let size = CGSize(width: tabBar.frame.width/5 , height: tabBar.frame.height)
        
        print(size.height)
        
        UITabBar.appearance().isTranslucent = false
        
        UITabBar.appearance().selectionIndicatorImage = UIImage().imageFromColor(color: orange, size: size)
    }
    
}

extension UIImage {
    func imageFromColor(color: UIColor, size: CGSize) -> UIImage {
        let rect: CGRect = CGRect(x: 0, y: 0, width: size.width, height: size.height)
        UIGraphicsBeginImageContextWithOptions(size, false, 0)
        color.setFill()
        UIRectFill(rect)
        let image: UIImage = UIGraphicsGetImageFromCurrentImageContext()!
        UIGraphicsEndImageContext()
        return image
    }
}



