//
//  LoginViewController.swift
//  InductionApp
//
//  Created by QLC on 16/07/20.
//  Copyright © 2020 QLC. All rights reserved.
//

import UIKit

class LoginViewController: BaseViewController {

    override var isBackgroundBlue: Bool {
        return true
    }
    
    override var isNavigationHidden: Bool {
        return true
    }
    @IBOutlet weak var txtMobileNo: CustomTexrField!
    @IBOutlet weak var txtPassword: CustomTexrField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUI()
    }
    
    func setUI() {
        txtMobileNo.setPlaceHolderText = HardCodedStrings.mobileNo
        txtPassword.setPlaceHolderText = HardCodedStrings.password
        txtPassword.isSecrect = true
    }
    
    @IBAction func loginButtonAction(_ sender: CustomButton) {
        userDefaults.set(true, forKey: UserDefaultKeys.loginKey)
        sceneDelegateInstance?.gotoRootViewController()
    }
}
