//
//  Single.swift
//  nfbox
//
//  Created by Mohammad Jedari on 10/31/16.
//  Copyright © 2016 tds. All rights reserved.
//

import UIKit

class  Single: UIViewController {
    
    @IBOutlet weak var SingleTitle: UILabel!
    @IBOutlet weak var SingleType: UILabel!
    @IBOutlet weak var SinglePicture: UIImageView!
    @IBOutlet weak var SingleWeb: UIWebView!


    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        SingleWeb.layer.shadowColor = UIColor.black.cgColor
        SingleWeb.layer.shadowOpacity = 0.2
        SingleWeb.layer.shadowOffset = CGSize(width: 1, height: 1)
        SingleWeb.layer.shadowRadius = 4
        SingleWeb.layer.shadowPath = UIBezierPath(rect: SingleWeb.bounds).cgPath
        let htmlString:String! = "<p style=font-weigth:bold;>DIRECTIONS</p><p style=font-size:12px;color=#555;>Other then direct URL we can load HTML String into UIWebView, we have to pass the htmlstring into loadHTMLString method like the below code snippet, replace this code in the viewDidLoad method.</p><p style=font-size:12px;color=#555;>Other then direct URL we can load HTML String into UIWebView, we have to pass the htmlstring into loadHTMLString method like the below code snippet, replace this code in the viewDidLoad method.</p><p style=font-size:12px;color=#555;>Other then direct URL we can load HTML String into UIWebView, we have to pass the htmlstring into loadHTMLString method like the below code snippet, replace this code in the viewDidLoad method.</p>"
        SingleWeb.loadHTMLString(htmlString, baseURL: nil)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
