//
//  Ext+UIViewController.swift
//  InductionApp
//
//  Created by QLC on 16/07/20.
//  Copyright © 2020 QLC. All rights reserved.
//

import Foundation
import UIKit

extension UIViewController {
    
    func addChildContoller(viewContoller: UIViewController?,toView: UIView!) {
        
        if let childViewContoller = viewContoller , let insideView = toView {
            
            self.addChild(childViewContoller)
            insideView.addSubview(childViewContoller.view)
            childViewContoller.view.frame = insideView.bounds
            childViewContoller.didMove(toParent: self)
            
        }
    }
    
    func removeFromChild() {
        self.willMove(toParent: nil)
        self.view.removeFromSuperview()
        self.removeFromParent()
    }
}
