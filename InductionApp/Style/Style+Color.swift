//
//  Style+Color.swift
//  InductionApp
//
//  Created by QLC on 16/07/20.
//  Copyright © 2020 QLC. All rights reserved.
//

import Foundation
import UIKit

enum Color {
    case backgroundWhite
    case navigationBarBlue
    case buttonLightBlue
    case progressTrackGray
    case progressGreen
}

extension Color {
    var value: UIColor {
        var uiInstance = UIColor.clear
        switch self {
        case .navigationBarBlue:
            uiInstance = UIColor(red: 17/255, green: 168/255, blue: 255/255, alpha: 1.0)
        case .backgroundWhite:
            uiInstance = UIColor(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        case .buttonLightBlue:
            uiInstance = UIColor(red: 50/255, green: 131/255, blue: 164/255, alpha: 1.0)
        case .progressTrackGray:
            uiInstance = UIColor.lightGray
        case .progressGreen:
            uiInstance = UIColor.green
        }
        return uiInstance
    }
}
