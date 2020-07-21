//
//  CustomButton.swift
//  InductionApp
//
//  Created by QLC on 17/07/20.
//  Copyright © 2020 QLC. All rights reserved.
//

import Foundation
import UIKit

class CustomButton: UIButton {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setUI()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setUI()
    }
    
    func setUI() {
        self.backgroundColor = Color.buttonLightBlue.value
        self.setTitleColor(Color.backgroundWhite.value, for: .normal)
    }
}
