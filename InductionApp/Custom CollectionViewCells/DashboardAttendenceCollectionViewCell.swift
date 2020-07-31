//
//  DashboardAttendenceCollectionViewCell.swift
//  InductionApp
//
//  Created by QLC on 20/07/20.
//  Copyright © 2020 QLC. All rights reserved.
//

import UIKit

class DashboardAttendenceCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var viewTitleLabel: UILabel!
    @IBOutlet weak var attendencePercentageLabel: UILabel!
    @IBOutlet weak var progressView: CircularProgressView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func setData(targetValue: CGFloat ,achievedValue : CGFloat) {
        DispatchQueue.main.async {
            self.progressView.setUI()
        }
        self.progressView.setLineWidth = 3.0
        self.progressView.trackColor = Color.buttonLightBlue.value
        self.progressView.progressColor = Color.backgroundWhite.value
        
        self.progressView.targetValue = targetValue
        self.progressView.achievedValue = achievedValue
        
        let percentage = (achievedValue/targetValue)*100
        
        self.attendencePercentageLabel.text = "\(percentage)%"
    }
}
