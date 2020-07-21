//
//  RootViewController.swift
//  InductionApp
//
//  Created by QLC on 16/07/20.
//  Copyright © 2020 QLC. All rights reserved.
//

import UIKit

class RootViewController: BaseViewController {

    @IBOutlet weak var containerView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()

        let isLogin = userDefaults.bool(forKey: UserDefaultKeys.loginKey)
        if isLogin {
            gotoHome()
        } else {
            gotoLogin()
        }
    }
    
    func gotoLogin() {
        guard let rootVC = Storyboards.login.instantiateViewController(identifier: ViewControllers.rootNavigationController) as? RootNavigationController  else { return }
        
        addChildContoller(viewContoller: rootVC, toView: containerView)
    }
    
    func gotoHome() {
        guard let rootVC = Storyboards.home.instantiateViewController(identifier: ViewControllers.rootNavigationController) as? RootNavigationController  else { return }
        
        addChildContoller(viewContoller: rootVC, toView: containerView)
    }
}
