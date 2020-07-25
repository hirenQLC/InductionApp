//
//  Apicallbacks.swift
//  InductionApp
//
//  Created by QLC on 16/07/20.
//  Copyright © 2020 QLC. All rights reserved.
//

import UIKit

protocol ApiCallbacks {
    func onHttpResponse(request: ApiRequest, data: Any)
    func onHttpError(error: String)
}
