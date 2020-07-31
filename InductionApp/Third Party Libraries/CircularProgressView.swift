//
//  CircularProgressView.swift
//  CircularProgressViewDemo
//
//  Created by Hiren Kadam on 28/07/20.
//  Copyright © 2020 Hiren Kadam. All rights reserved.
//

import UIKit

class CircularProgressView: UIView {

    fileprivate var progressLayer = CAShapeLayer()
    fileprivate var trackLayer = CAShapeLayer()
    
    var progressColor = UIColor.white {
        didSet {
            progressLayer.strokeColor = progressColor.cgColor
        }
    }
    
    var trackColor = UIColor.white {
        didSet {
            trackLayer.strokeColor = trackColor.cgColor
        }
    }
    
    var setLineWidth: CGFloat = 5.0 {
        didSet {
            createCircularPath()
        }
    }
    
    var targetValue: CGFloat = 0.0 {
        didSet {
            createCircularPath()
        }
    }
    
    var achievedValue: CGFloat = 0.0 {
        didSet {
            createCircularPath()
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
    
    public func setUI() {
        self.backgroundColor = UIColor.clear
        self.layer.cornerRadius = self.frame.size.width/2
        let circularPath = UIBezierPath(arcCenter: CGPoint(x: self.frame.size.width/2, y: self.frame.size.height/2), radius: (self.frame.size.width - 15)/2, startAngle: CGFloat(-0.5 * .pi), endAngle: CGFloat(1.5 * .pi), clockwise: true)
        
        trackLayer.path = circularPath.cgPath
        trackLayer.fillColor = UIColor.clear.cgColor
        
        self.layer.addSublayer(trackLayer)
        
        progressLayer.path = circularPath.cgPath
        progressLayer.fillColor = UIColor.clear.cgColor
        
        self.layer.addSublayer(progressLayer)
    }
    
    fileprivate func createCircularPath() {
        
        trackLayer.strokeColor = trackColor.cgColor
        trackLayer.strokeEnd = 1.0
        trackLayer.lineWidth = setLineWidth
        
        progressLayer.strokeColor = progressColor.cgColor
        progressLayer.strokeEnd = achievedValue/targetValue
        progressLayer.lineWidth = setLineWidth
    }
}
