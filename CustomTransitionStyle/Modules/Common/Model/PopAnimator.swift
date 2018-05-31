//
//  PopAnimator.swift
//  CustomTransitionStyle
//
//  Created by Vanee Virdi on 01/06/18.
//  Copyright © 2018 Vanee Virdi. All rights reserved.
//

import Foundation
import UIKit

class PopAnimator: NSObject, UIViewControllerAnimatedTransitioning {
    
    var duration:Double = 1.0
    var isPresenting = true
    
    public func transitionDuration(using transitionContext: UIViewControllerContextTransitioning?) -> TimeInterval {
        return duration
    }
    
    public func animateTransition(using transitionContext: UIViewControllerContextTransitioning) {
        
        let containerView = transitionContext.containerView
        guard let fromView = transitionContext.view(forKey: .from),
            let toView = transitionContext.view(forKey: .to)
            else { return }
    
        if isPresenting {
            let initialFrame = CGRect(x: 0, y: fromView.frame.height, width: fromView.frame.width, height: fromView.frame.height)
            toView.frame = initialFrame
            toView.alpha = 0.0
            containerView.addSubview(toView)
            UIView.animate(withDuration: duration, animations: {
                toView.frame.origin.y = 0
                toView.alpha = 1
                fromView.alpha = 0.0
            }) { _ in
                transitionContext.completeTransition(true)
            }
        } else {
            UIView.animate(withDuration: duration, animations: {
                fromView.frame.origin.y = fromView.frame.height
                fromView.alpha = 0.0
                toView.alpha = 1.0
            }) { (complete) in
                if complete == true {
                    fromView.removeFromSuperview()
                }
                transitionContext.completeTransition(true)
            }
        }
        
        
    }
    
}
