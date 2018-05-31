//
//  HomeViewController.swift
//  CustomTransitionStyle
//
//  Created by Vanee Virdi on 30/05/18.
//  Copyright © 2018 Vanee Virdi. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {
    @IBOutlet var titleLabel : UILabel!
    @IBOutlet var content : UILabel!
    @IBOutlet var subtitleLabel : UILabel!

    struct Constants {
        static let title = "home.title".localized
        static let content = "home.body".localized
        static let subtitle = "home.subtitle".localized
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        titleLabel.text = Constants.title
        content.text = Constants.content
        subtitleLabel.text = Constants.subtitle
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

