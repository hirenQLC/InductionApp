//
//  CustomTextField.swift
//  InductionApp
//
//  Created by QLC on 17/07/20.
//  Copyright © 2020 QLC. All rights reserved.
//

import Foundation
import UIKit

class CustomTexrField: UITextField {
    
    public var setPlaceHolderText: String = "" {
        didSet {
            setPlaceHolder()
        }
    }
    
    public var isSecrect: Bool = false {
        didSet{
            setHiddenText()
        }
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setUI()
    }
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setUI()
    }
    
    private func setUI() {
        let bottomLine = CALayer()
        bottomLine.frame = CGRect(x: 0, y: self.frame.height - 1, width: self.bounds.width, height: 1)
        bottomLine.backgroundColor = Color.backgroundWhite.value.cgColor
        self.backgroundColor = .clear
        self.borderStyle = .none
        self.layer.addSublayer(bottomLine)
        self.font = Fonts.regularH3.value
        self.textColor = Color.backgroundWhite.value
    }
    
    private func setPlaceHolder() {
        self.attributedPlaceholder = NSAttributedString(string: self.setPlaceHolderText, attributes: [NSAttributedString.Key.foregroundColor : Color.backgroundWhite.value])
    }
    
    private func setHiddenText() {
        if isSecrect {
            self.isSecureTextEntry = true
        } else {
            self.isSecureTextEntry = false
        }
    }
}
