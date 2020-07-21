//
//  UIcolor+Extension.swift
//  InductionApp
//
//  Created by QLC on 17/07/20.
//  Copyright © 2020 QLC. All rights reserved.
//

import Foundation
import UIKit

extension UIColor {
    func image(_ size: CGSize = CGSize(width: 1, height: 1)) -> UIImage {
        return UIGraphicsImageRenderer(size: size).image { rendererContext in
            self.setFill()
            rendererContext.fill(CGRect(origin: .zero, size: size))
        }
    }
}
