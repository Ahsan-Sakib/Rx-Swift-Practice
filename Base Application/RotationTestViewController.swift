//
//  RotationTestViewController.swift
//  Base Application
//
//  Created by BJIT-SAKIB on 30/12/22.
//  Copyright © 2022 sakibwrold. All rights reserved.
//

import UIKit

class RotationTestViewController: UIViewController{
    @IBOutlet weak var image1: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        image1.transform = image1.transform.rotated(by: .pi/2)
        
//        image1.transform = image1.transform.scaledBy(x: 0.5, y: 2)
        
       // image1.transform
        image1.center = CGPoint(x: 100, y: 100)
    }
}
