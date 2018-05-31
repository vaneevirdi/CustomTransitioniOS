//
//  UIViewController+Transition.swift
//  CustomTransitionStyle
//
//  Created by Vanee Virdi on 31/05/18.
//  Copyright © 2018 Vanee Virdi. All rights reserved.
//

import Foundation
import UIKit

public extension UIViewController {
    
    @IBOutlet var transitioningDelegateOutlet: UIViewControllerTransitioningDelegate? {
        get {
            return transitioningDelegate
        }
        set {
            transitioningDelegate = newValue
        }
    }
}

