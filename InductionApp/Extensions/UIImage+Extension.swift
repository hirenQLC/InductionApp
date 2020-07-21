//
//  UIImage+Extension.swift
//  InductionApp
//
//  Created by QLC on 20/07/20.
//  Copyright © 2020 QLC. All rights reserved.
//

import Foundation
import UIKit

extension UIImageView {
    func roundCorners() {
        DispatchQueue.main.async {
            self.clipsToBounds = true
            self.layer.masksToBounds = true
            self.layer.cornerRadius = self.frame.height/2
        }
    }
}
