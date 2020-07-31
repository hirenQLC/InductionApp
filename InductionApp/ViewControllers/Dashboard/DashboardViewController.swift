//
//  DashboardViewController.swift
//  InductionApp
//
//  Created by QLC on 16/07/20.
//  Copyright © 2020 QLC. All rights reserved.
//

import UIKit

class DashboardViewController: BaseViewController {

    override var isNavigationHidden: Bool {
        return false
    }
    
    @IBOutlet weak var tableView: CustomTableView!
    @IBOutlet weak var collectionView: DashboardCollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()
        setUI()
        
        //MARK: Attendence API Call
        HttpManager.shared.executeHttpRequest(apiRequest: .attendence(SortType: 1), apiCallbacks: self)
    }
    
    func setUI() {
        tableView.tableType = .team
        collectionView.setData()
    }
    
    override func onHttpResponse(request: ApiRequest, data: Any) {
        switch request {
        case .attendence:
            
            let decoder = JSONDecoder()
            guard let dataObj = data as? Data else {return}
            do {
                let attendenceResult = try decoder.decode(AttendenceBase.self, from: dataObj)
                print(attendenceResult.result?.myteamUserList?.first?.username)
                guard let array = attendenceResult.result?.myteamUserList else {return}
                DispatchQueue.main.async {
                    self.tableView.setData(teamArray: array)
                }
            }catch(let error) {
                print(error.localizedDescription)
            }
            break
        default:
            break
        }
    }
}
