//
//  ApiConfig.swift
//  InductionApp
//
//  Created by QLC on 16/07/20.
//  Copyright © 2020 QLC. All rights reserved.
//

import UIKit

class ApiConfig: NSObject {
    
    static let PROTOCOL: String = "http"
  
    // Testing
    static let HOST: String = "testfsapi.ap-south-1.elasticbeanstalk.com"
    
    // Live
    //static let HOST: String = "interview-e18de.firebaseio.com"
    
    static let PATH: String = ""
    static let BASE_URL: String =  PROTOCOL + "://" + HOST + PATH
    
}
