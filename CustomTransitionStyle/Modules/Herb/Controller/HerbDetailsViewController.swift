//
//  HerbDetailsViewController.swift
//  CustomTransitionStyle
//
//  Created by Vanee Virdi on 31/05/18.
//  Copyright © 2018 Vanee Virdi. All rights reserved.
//

import Foundation
import UIKit

class HerbDetailsViewController: UIViewController {
    
    @IBOutlet var backgroungView: UIImageView!
    var herb: Herb?
    
    override func viewDidLoad() {
        if let herb = herb {
            backgroungView.image = UIImage(named: herb.iconName)
        }
        
    }
}
