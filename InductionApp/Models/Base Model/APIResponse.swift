//
//  APIResponse.swift
//  InductionApp
//
//  Created by QLC on 31/07/20.
//  Copyright © 2020 QLC. All rights reserved.
//

import Foundation

struct APIResponse: Codable {
    
    /*
    
    let status : String?
    let errorCode : String?
    let errorMessage : String?
    let resultType : String?
    let result : Any
    
    enum APICodingKeys: String, CodingKey {
        case status = "status"
        case errorCode = "errorCode"
        case errorMessage = "errorMessage"
        case resultType = "resultType"
        case result = "result"
    }
    required init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: APICodingKeys.self)
        status = try values.decodeIfPresent(String.self, forKey: .status)
        errorCode = try values.decodeIfPresent(String.self, forKey: .errorCode)
        errorMessage = try values.decodeIfPresent(String.self, forKey: .errorMessage)
        resultType = try values.decodeIfPresent(String.self, forKey: .resultType)
        
        if let respResult = try values.decodeIfPresent(Result.self, forKey: .result)
        
        result = respResult
        
        //result = try values.decodeIfPresent(Result.self, forKey: .result)
    }
    init() {
    }
    func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: APICodingKeys.self)
        try container.encode(status, forKey: .status)
        try container.encode(err, forKey: .errorcode)
        try container.encode(errorMessage, forKey: .errorMessage)
        try container.encode(resultType, forKey: .resultType)
        try container.encode(result, forKey: .result)
    }
 
    */
}
