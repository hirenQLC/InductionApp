//
//  Constants.swift
//  InductionApp
//
//  Created by QLC on 16/07/20.
//  Copyright © 2020 QLC. All rights reserved.
//

import Foundation
import UIKit


//MARK: AppDelegate Object for Whole Project
var appDelegateInstance: AppDelegate? {
    return UIApplication.shared.delegate as? AppDelegate
}

//MARK: UserDefaults

var userDefaults = UserDefaults.standard

//MARK: SceneDelegate Object for Whole Project
var sceneDelegateInstance: SceneDelegate? {
    return UIApplication.shared.connectedScenes.first?.delegate as? SceneDelegate
}

//MARK: Screen Size of Device

var ScreenWidth = UIScreen.main.bounds.width
var ScreenHeight = UIScreen.main.bounds.height

//MARK: Storyboard
struct Storyboards {
    static let login = UIStoryboard(name: "Login", bundle: nil)
    static let home  = UIStoryboard(name: "Home", bundle: nil)
    
}

//MARK: ViewController
struct ViewControllers {
    static let baseViewContoller = "BaseViewContoller"
    static let rootViewContoller = "RootViewController"
    static let rootNavigationController = "RootNavigationController"
    static let loginViewContoller = "LoginViewContoller"
}


//MARK: Hard Coded Strings
struct HardCodedStrings {
    static let mobileNo = "mobile_NO".localized
    static let password = "password".localized
}

//MARK: User Default Keys
struct UserDefaultKeys {
    static let loginKey = "Login"
}
