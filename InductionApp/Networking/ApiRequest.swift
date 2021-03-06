//
//  ApiRequest.swift
//  InductionApp
//
//  Created by QLC on 16/07/20.
//  Copyright © 2020 QLC. All rights reserved.
//

import UIKit

enum ApiRequest {
    
    case login(Email:String ,Password:String)
    case attendence(SortType: Int)
    
    var httpMethod: HttpMethods {
        switch self {
        case .login:
            return HttpMethods.POST
        case .attendence:
            return HttpMethods.GET
        }
    }
    
    var httpUrl: String {
        switch self {
        case .login:
            return "/authenticate/loginV2"
        case .attendence(let sortType):
            return "/mobileshift/getMyTeamForAttendance/\(UserDatabaseManager.shared.fetchUser()?.userId ?? 0)/\(sortType)"
        }
    }
    
    var contentType: ContentTypes {
        switch self {
            
        case .login:
            return ContentTypes.json
            
        case .attendence:
            return ContentTypes.urlEncoded
        
        default:
            
            return ContentTypes.json
       
        }
    }
    
    var httpHeaders: [Headers]{
        switch self {
        case .login:
            return []
        case .attendence:
            return [Headers.userToken(token: UserDatabaseManager.shared.fetchUser()?.userToken ?? "")]
        }
    }
    
    var requestParams: [ApiParam]{
        switch self {
        case .login(let Email,let Password):
            return [ApiParam.text(key: "userEmailAddress", value: Email),ApiParam.text(key: "password", value: Password),ApiParam.text(key: "key", value: ""),ApiParam.text(key: "appVersion", value: "58"),ApiParam.text(key: "deviceOS", value: "2")]
        case .attendence:
            return []
        }
    }
    
    func parseResponseData(data: Data, httpResponse: HTTPURLResponse, apiCallbacks: ApiCallbacks ){
        switch self {
        case .login,.attendence:
            apiCallbacks.onHttpResponse(request: self, data: data)
        }
    }
    
    enum HttpMethods: String{
        case GET = "GET"
        case POST = "POST"
        case PUT = "PUT"
        case DELETE = "DELETE"
    }
    
    enum ContentTypes: String {
        case json = "application/json"
        case urlEncoded = "application/x-www-form-urlencoded"
        case multipart = "multipart/form-data;"
        
    }
    
    enum Headers {
        case accept(contentType: ContentTypes)
        case tokenType(token: String)
        case contentType(contentType: ContentTypes)
        case userToken(token: String)
        case client(client: String)
        case expiry(expiry: String)
        case uid(uid: String)
        
        var key : String {
            switch self {
            case .accept:
                return "Accept"
            case .tokenType:
                return "Authorization"
            case .contentType:
                return "Content-Type"
            case .userToken:
                return "userToken"
            case .client:
                return "client"
            case .expiry:
                return "expiry"
            case .uid:
                return "uid"
            }
        }
        
        var value: String {
            switch self {
            case .accept(let contentType), .contentType(let contentType):
                return contentType.rawValue
            case .tokenType(let token):
                return token
            case .userToken(let accessToken):
                return accessToken
            case .client(let client):
                return client
            case .expiry(let expiry):
                return expiry
            case .uid(let uid):
                return uid
            }
        }
    }
    
    func createHttpRequest() -> URLRequest{
        
        let debug: Bool = true;
        
        
        //For GET method we will add text params as query string to url
        var queryitems = [URLQueryItem]()
        
        //For URL encode we will add only text params to body
        var keyValueParams = [String: Any]()

        for param in requestParams {
            
            switch param {
            case .text(let key, let value):
                
                print("key - \(key) && value - \(value)")
                
                queryitems.append(URLQueryItem(name: key, value: value))
                keyValueParams[key] = value
                
            case .anyValue(let key, let value):
                
                print("key - \(key) && value - \(value)")
                
                queryitems.append(URLQueryItem(name: key, value: "\(value)"))
                keyValueParams[key] = value
                
            default:
                if (debug) { debugPrint("Ignore non text params for keyValueParams") }
            }
        }
        
        /*for (key,value) in keyValueParams {
            if let keyvalue = value as? String {
                queryitems.append(URLQueryItem(name: key, value: keyvalue))
            }
        }*/
        
        let urlComponents = NSURLComponents()
        urlComponents.scheme = ApiConfig.PROTOCOL
        urlComponents.percentEncodedHost = ApiConfig.HOST
        urlComponents.percentEncodedPath = ApiConfig.PATH + httpUrl

        if httpMethod == HttpMethods.GET {
            urlComponents.queryItems = queryitems
        }
        
        // This is a POST method, though we need to append a URL query item
        /*
        switch self {
        case .getAdminDashboardData, .sendOTP, .verifyOTP, .resetPassword, .addUserVote, .deleteComplaint, .resolveComplain, .getProfileDetails:
            urlComponents.queryItems = queryitems
            break
        default:
            break
        }*/
        
        print(urlComponents.url!)
        
        var urlRequest = URLRequest(url: urlComponents.url!)
        
        urlRequest.httpMethod = httpMethod.rawValue
        
        for header in httpHeaders {
            
            if debug { print("\(header.key) : \(header.value)") }
            
            urlRequest.setValue(header.value, forHTTPHeaderField: header.key)
        }
        
        switch contentType {
            
        case ContentTypes.json:
            
            let headerContentType = Headers.contentType(contentType: .json)
            
            urlRequest.addValue(headerContentType.value, forHTTPHeaderField: headerContentType.key)
            
            if debug { debugPrint(headerContentType.key + " : "+headerContentType.value)}
            
            if keyValueParams.count > 0{
                
                print(keyValueParams)
                
                urlRequest.httpBody = try! JSONSerialization.data(withJSONObject: keyValueParams, options: .prettyPrinted)
            }
        
        case ContentTypes.urlEncoded:
            
            let headerContentType = Headers.contentType(contentType: .urlEncoded)
            
            urlRequest.addValue(headerContentType.value, forHTTPHeaderField: headerContentType.key)
            
            if debug { debugPrint(headerContentType.key + " : "+headerContentType.value)}
            
            if !queryitems.isEmpty &&  httpMethod != HttpMethods.GET{
                
                let queryComponents = NSURLComponents()
                
                queryComponents.queryItems = queryitems
                
                //VISH 20180316 - Need to confirm if we need to encode any other characters. Not tested
                urlRequest.httpBody =  queryComponents.percentEncodedQuery!.data(using: String.Encoding.utf8)
            }
            
        case ContentTypes.multipart:
            
            let boundary = "*****" + UUID().uuidString.replacingOccurrences(of: "-", with: "").lowercased() + "*****"
            
            let headerContentType = Headers.contentType(contentType: .multipart)
            
            urlRequest.addValue(headerContentType.value + " boundary=" + boundary, forHTTPHeaderField: headerContentType.key)
            
            if debug { debugPrint(headerContentType.key + " : "+headerContentType.value+" boundary=" + boundary)}
            
            urlRequest.httpBody = createMultipartBody(boundary: boundary)
            
        }
        
        if debug { print("Body") }
        
        //if debug { print( String(data: urlRequest.httpBody!,encoding: String.Encoding.utf8)! ) }
        
        return urlRequest
        
    }
    
    func createMultipartBody(boundary: String) -> Data {
        
        let twoHyphen: String = "--"
        
        let crlf: String = "\r\n"
        
        var body = Data()
        
        for param in requestParams{
            
            //Start param
            body.append((twoHyphen+boundary+crlf).data(using: .utf8)!)
            
            switch param{
            case .text(let key, let value):
                    body.append(("Content-Disposition: form-data; name=\""+key+"\""+crlf+crlf).data(using: .utf8)!)
                    body.append(value.data(using: .utf8)!)
            case .data(let key, let filename, let type, let value):
                    body.append(("Content-Disposition: form-data; name=\"" + key + "\"; filename=\""+filename+"\""+crlf).data(using: .utf8)!)
                    body.append(("Content-Type: \(type)"+crlf+crlf).data(using: .utf8)!)
                    body.append(value)
                    body.append(crlf.data(using: .utf8)!)
            default:
                print("Not a Multipart type")
                break
            }
        }
        
        //End body
        body.append((twoHyphen+boundary+twoHyphen+twoHyphen).data(using: .utf8)!)
        
        return body
    }

}
