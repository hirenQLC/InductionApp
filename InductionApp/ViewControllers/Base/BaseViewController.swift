//
//  BaseViewController.swift
//  InductionApp
//
//  Created by QLC on 16/07/20.
//  Copyright © 2020 QLC. All rights reserved.
//

import UIKit

class BaseViewController: UIViewController {

    var isBackgroundBlue: Bool {
        return false
    }
    
    var isNavigationHidden: Bool {
        return false
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        setBaseUI()
    }
    
    func setBaseUI() {
        checkBackgroundColor()
        checkNavigation()
    }
    
    private func checkBackgroundColor() {
        if isBackgroundBlue {
            self.view.backgroundColor = Color.navigationBarBlue.value
        } else {
            self.view.backgroundColor = Color.backgroundWhite.value
        }
    }
    
    private func checkNavigation() {
        if let nav = self.navigationController as? RootNavigationController {
            if isNavigationHidden {
                nav.clearNavigation()
            } else {
                nav.setUI()
            }
        }
    }
}
