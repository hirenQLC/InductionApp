//
//  LoginViewController.swift
//  InductionApp
//
//  Created by QLC on 16/07/20.
//  Copyright © 2020 QLC. All rights reserved.
//

import UIKit

class LoginViewController: BaseViewController {

    override var isBackgroundBlue: Bool {
        return true
    }
    
    override var isNavigationHidden: Bool {
        return true
    }
    @IBOutlet weak var txtMobileNo: CustomTexrField!
    @IBOutlet weak var txtPassword: CustomTexrField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUI()
    }
    
    func setUI() {
        txtMobileNo.setPlaceHolderText = HardCodedStrings.mobileNo
        txtPassword.setPlaceHolderText = HardCodedStrings.password
        txtPassword.isSecrect = true
        
        txtMobileNo.text = "poonam@qlc.in"
        txtPassword.text = "qlc.in123"
    }
    
    @IBAction func loginButtonAction(_ sender: CustomButton) {
        
        //MARK: Login API Call
        HttpManager.shared.executeHttpRequest(apiRequest: .login(Email: txtMobileNo.text ?? "", Password: txtPassword.text ?? ""), apiCallbacks: self)
    }
    
    override func onHttpResponse(request: ApiRequest, data: Any) {
        switch request {
        case .login:
            
            let decoder = JSONDecoder()
            guard let dataObj = data as? Data else {return}
            do {
                let result = try decoder.decode(LoginBase.self, from: dataObj)
                print(result.result?.accountName)
            }catch(let error) {
                print(error.localizedDescription)
            }
            
            DispatchQueue.main.async {
                userDefaults.set(true, forKey: UserDefaultKeys.loginKey)
                sceneDelegateInstance?.gotoRootViewController()
            }
        }
    }
}
