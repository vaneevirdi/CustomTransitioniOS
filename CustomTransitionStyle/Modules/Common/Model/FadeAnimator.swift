//
//  FadeAnimator.swift
//  CustomTransitionStyle
//
//  Created by Vanee Virdi on 31/05/18.
//  Copyright © 2018 Vanee Virdi. All rights reserved.
//

import Foundation
import UIKit

class FadeAnimator: NSObject, UIViewControllerAnimatedTransitioning {
    
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
        
        containerView.addSubview(toView)
        toView.alpha = 0.0
        UIView.animate(withDuration: duration, animations: {
            toView.alpha = 1
        }) { _ in
            transitionContext.completeTransition(true)
        }
        
    }
    
}
