//
//  UIString+Extensions.swift
//  InductionApp
//
//  Created by QLC on 17/07/20.
//  Copyright © 2020 QLC. All rights reserved.
//

import Foundation

extension String {
    
    public var localized: String {
        return NSLocalizedString(self, comment: "")
    }
}
