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
    }
    
    func setUI() {
        tableView.tableType = .team
        tableView.setData()
        collectionView.setData()
    }
}
