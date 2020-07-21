//
//  CustomTableView.swift
//  InductionApp
//
//  Created by QLC on 20/07/20.
//  Copyright © 2020 QLC. All rights reserved.
//

import UIKit

enum TableType {
    case selfUser
    case team
}

class CustomTableView: UITableView {
    
    var tableType: TableType?

    override init(frame: CGRect, style: UITableView.Style) {
        super.init(frame: frame, style: style)
        setUI()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setUI()
    }

    func setUI() {
        self.register(UINib(nibName: "TeamTableViewCell", bundle: nil), forCellReuseIdentifier: "TeamTableViewCell")
    }
    
    func setData() {
        self.delegate = self
        self.dataSource = self
        self.reloadData()
    }
}

extension CustomTableView: UITableViewDelegate,UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        switch tableType {
        case .selfUser:
            print("")
            return UITableViewCell()
        case .team:
            guard let cell = self.dequeueReusableCell(withIdentifier: "TeamTableViewCell", for: indexPath) as? TeamTableViewCell else {return UITableViewCell()}
            cell.memberImageView.roundCorners()
            return cell
        case .none:
            return UITableViewCell()
        }
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
}
