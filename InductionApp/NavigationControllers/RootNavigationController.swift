//
//  RootNavigationController.swift
//  InductionApp
//
//  Created by QLC on 16/07/20.
//  Copyright © 2020 QLC. All rights reserved.
//

import UIKit

class RootNavigationController: UINavigationController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func setUI() {
         self.navigationBar.isHidden = false
         /// Change font of Title
         //self.navigationBar.titleTextAttributes = [
         //    NSAttributedString.Key.font: Font.boldH2.value,
         //    NSAttributedString.Key.foregroundColor : Color.textPrimary.value
         //]
         /// Apply shadow
         self.navigationBar.layer.shadowColor = UIColor.black.cgColor
         self.navigationBar.layer.shadowOffset = CGSize(width: 0.0, height: 3.0)
         self.navigationBar.layer.shadowRadius = 8.0
         self.navigationBar.layer.shadowOpacity = 0.2
         self.navigationBar.layer.masksToBounds = false
         self.navigationBar.tintColor = Color.backgroundWhite.value
         self.navigationBar.isTranslucent = false
        self.navigationBar.setBackgroundImage(Color.navigationBarBlue.value.image(self.navigationBar.frame.size), for: .default)
         self.navigationBar.shadowImage = UIImage()
     }
    public func clearNavigation() {
         self.navigationBar.isHidden = true
     }
}
