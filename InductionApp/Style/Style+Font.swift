//
//  Style+Font.swift
//  InductionApp
//
//  Created by QLC on 16/07/20.
//  Copyright © 2020 QLC. All rights reserved.
//

import Foundation
import UIKit

enum FontName: String {
    case regular = "HelveticaNeue"
    case bold = "HelveticaNeue-Bold"
    case semiBold = "HelveticaNeue-Medium"
}

enum FontSize: CGFloat {
    case h1Size = 24.0 // Title
    case h2Size = 20.0 // Sub
    case h3Size = 16.0 // Body
    case h4Size = 12.0 // Secondary
    case h5Size = 10.0 // Micro
}
enum FontIpadSize: CGFloat {
    case h1Size = 26.0 // Title
    case h2Size = 22.0 // Sub
    case h3Size = 18.0 // Body
    case h4Size = 14.0 // Secondary
    case h5Size = 12.0 // Micro
}

enum Fonts {
    
    // Regular Size
    case regularH1
    case regularH2
    case regularH3
    case regularH4
    case regularH5
    
    //Bold Size
    case boldH1
    case boldH2
    case boldH3
    case boldH4
    case boldH5
    
    //Semi Bold Size
    case semiBoldH1
    case semiBoldH2
    case semiBoldH3
    case semiBoldH4
    case semiBoldH5
}

extension Fonts {
    var value: UIFont {
        var instance : UIFont!
        
        switch self {
        //Regular
        case .regularH1:
            instance = UIFont(name: FontName.regular.rawValue, size: FontSize.h1Size.rawValue)
        case .regularH2:
            instance = UIFont(name: FontName.regular.rawValue, size: FontSize.h2Size.rawValue)
        case .regularH3:
            instance = UIFont(name: FontName.regular.rawValue, size: FontSize.h3Size.rawValue)
        case .regularH4:
            instance = UIFont(name: FontName.regular.rawValue, size: FontSize.h4Size.rawValue)
        case .regularH5:
            instance = UIFont(name: FontName.regular.rawValue, size: FontSize.h5Size.rawValue)
            
        //Bold
        case .boldH1:
            instance = UIFont(name: FontName.bold.rawValue, size: FontSize.h1Size.rawValue)
        case .boldH2:
            instance = UIFont(name: FontName.bold.rawValue, size: FontSize.h2Size.rawValue)
        case .boldH3:
            instance = UIFont(name: FontName.bold.rawValue, size: FontSize.h3Size.rawValue)
        case .boldH4:
            instance = UIFont(name: FontName.bold.rawValue, size: FontSize.h4Size.rawValue)
        case .boldH5:
            instance = UIFont(name: FontName.bold.rawValue, size: FontSize.h5Size.rawValue)
            
        //Semi Bold
        case .semiBoldH1:
            instance = UIFont(name: FontName.semiBold.rawValue, size: FontSize.h1Size.rawValue)
        case .semiBoldH2:
            instance = UIFont(name: FontName.semiBold.rawValue, size: FontSize.h2Size.rawValue)
        case .semiBoldH3:
            instance = UIFont(name: FontName.semiBold.rawValue, size: FontSize.h3Size.rawValue)
        case .semiBoldH4:
            instance = UIFont(name: FontName.semiBold.rawValue, size: FontSize.h4Size.rawValue)
        case .semiBoldH5:
            instance = UIFont(name: FontName.semiBold.rawValue, size: FontSize.h5Size.rawValue)
            
        }
        
        return instance!
    }
}
