//
//  HerbCollectionViewCell.swift
//  CustomTransitionStyle
//
//  Created by Vanee Virdi on 31/05/18.
//  Copyright © 2018 Vanee Virdi. All rights reserved.
//

import Foundation
import UIKit

class HerbCollectionViewCell: UICollectionViewCell {

    @IBOutlet var iconView: UIImageView!
    var herb: Herb? { didSet { updateView() } }
    
    func updateView() {
        if let herb = herb {
            iconView.image = UIImage(named: herb.iconName)
        }
        layer.cornerRadius = 10.0
    }
}
