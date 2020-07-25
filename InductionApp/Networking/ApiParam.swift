//
//  ApiParam.swift
//  InductionApp
//
//  Created by QLC on 16/07/20.
//  Copyright © 2020 QLC. All rights reserved.
//

import UIKit

enum ApiParam {
    case text(key: String, value: String)
    case data(key: String, filename: String, type: String, value: Data)
    case anyValue(key: String, value: Any)
}
