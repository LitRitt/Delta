//
//  GamesPresentationController.swift
//  Delta
//
//  Created by Riley Testut on 8/7/16.
//  Copyright © 2016 Riley Testut. All rights reserved.
//

import UIKit

class GamesPresentationController: UIPresentationController
{
    let blurView: UIVisualEffectView
    
    private let animator: UIViewPropertyAnimator
    
    init(presentedViewController: UIViewController, presenting presentingViewController: UIViewController?, animator: UIViewPropertyAnimator)
    {
        self.animator = animator
        
        self.blurView = UIVisualEffectView(effect: nil)
        self.blurView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        
        super.init(presentedViewController: presentedViewController, presenting: presentingViewController)
    }
    
    override func presentationTransitionWillBegin()
    {
        guard let containerView = self.containerView else { return }
        
        self.blurView.frame = CGRect(x: 0, y: 0, width: containerView.bounds.width, height: containerView.bounds.height)
        self.blurView.overrideUserInterfaceStyle = .dark
        containerView.addSubview(self.blurView)
        
        self.animator.addAnimations {
            if #available(iOS 26, *)
            {
                let glass = UIGlassEffect(style: .regular)
                glass.tintColor = .black.withAlphaComponent(0.3)
                
                self.blurView.effect = glass
            }
            else
            {
                self.blurView.effect = UIBlurEffect(style: .dark)
            }
        }
    }
    
    override func dismissalTransitionWillBegin()
    {
        // TODO: check if alpha animation is working in later iOS 26 versions and, ideally, if blur effect animation is fixed

        if #available(iOS 26, *)
        {
            self.animator.addAnimations {
                self.blurView.alpha = 0
            }
            
            self.animator.addCompletion { _ in
                self.blurView.effect = nil
            }
        }
        else
        {
            self.animator.addAnimations {
                self.blurView.effect = nil
            }
        }
    }
    
    override func dismissalTransitionDidEnd(_ completed: Bool)
    {
        self.blurView.removeFromSuperview()
    }
}
