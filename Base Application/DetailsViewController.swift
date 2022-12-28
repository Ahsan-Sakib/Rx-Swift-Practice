//
//  DetailsViewController.swift
//  Base Application
//
//  Created by BJIT-SAKIB on 28/12/22.
//  Copyright © 2022 sakibwrold. All rights reserved.
//

import UIKit

class DetailsViewController: UIViewController {
    @IBOutlet weak var itemImageView:UIImageView!

    var imageName:String?

    override func viewDidLoad() {
        super.viewDidLoad()
        if let imageName {
            self.itemImageView.image = UIImage(named: imageName)
        }
    }
}
