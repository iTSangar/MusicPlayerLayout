//
//  ViewController.swift
//  Player
//
//  Created by Ítalo Sangar on 11/4/15.
//  Copyright © 2015 iTSangar. All rights reserved.
//

import UIKit

class Skuby: UISlider {
    override func trackRectForBounds(bounds: CGRect) -> CGRect {
        var result = super.trackRectForBounds(bounds)
        result.origin.x = -1
        result.size.height = 3
        result.size.width = bounds.size.width + 2
        return result
    }
}

class ViewController: UIViewController {
    
    @IBOutlet var skub: Skuby!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        skub.setThumbImage(UIImage(named: "skubidu")!, forState: .Normal)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func preferredStatusBarStyle() -> UIStatusBarStyle {
        return .LightContent
    }
    
}

