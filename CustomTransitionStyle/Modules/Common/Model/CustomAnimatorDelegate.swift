//
//  CustomAnimatorDelegate.swift
//  CustomTransitionStyle
//
//  Created by Vanee Virdi on 31/05/18.
//  Copyright © 2018 Vanee Virdi. All rights reserved.
//

import Foundation
import UIKit

@IBDesignable class CustomAnimationDelegate: NSObject, UIViewControllerTransitioningDelegate {
    
    @IBInspectable var duration: Double = 1.0
    var animator = PopAnimator()
    
    public func animationController(forPresented presented: UIViewController, presenting: UIViewController, source: UIViewController) -> UIViewControllerAnimatedTransitioning? {
        animator.duration = duration
        animator.isPresenting = true
        return animator
    }
    
    public func animationController(forDismissed dismissed: UIViewController) -> UIViewControllerAnimatedTransitioning? {
        animator.duration = duration
        animator.isPresenting = false
        return animator
    }
}
