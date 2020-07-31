//
//  TeamTableViewCell.swift
//  InductionApp
//
//  Created by QLC on 20/07/20.
//  Copyright © 2020 QLC. All rights reserved.
//

import UIKit

class TeamTableViewCell: UITableViewCell {

    @IBOutlet weak var memberImageView: UIImageView!
    @IBOutlet weak var srNoLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var progressView: CircularProgressView!
    @IBOutlet weak var attendencePercentageLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func setData(memberObj: MyteamUserList) {
        
        DispatchQueue.main.async {
            self.progressView.setUI()
        }
        self.progressView.setLineWidth = 3.0
        self.progressView.trackColor = Color.progressTrackGray.value
        self.progressView.progressColor = Color.progressGreen.value
        
        let percentage = memberObj.userPercentage ?? 0.0
        
        self.progressView.targetValue = 100
        self.progressView.achievedValue = CGFloat(percentage/100)
        self.attendencePercentageLabel.text = "\(percentage)%"
        
        self.nameLabel.text = memberObj.username ?? ""
        self.srNoLabel.text = "\(memberObj.userId ?? 0)"
    }
}
