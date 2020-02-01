//
//  CircularProgressView.swift
//  CircularProgressView
//
//  Created by VinayKiran M on 01/02/20.
//  Copyright © 2020 VinayKiran M. All rights reserved.
//

import Foundation
import UIKit

class CircularProgressView: UIView {
    private let kStartAngle = CGFloat(-0.5 * .pi)
    private let kEndAngle = CGFloat(1.5 * .pi)
    open var progressLyr = CAShapeLayer()
    open var trackLyr = CAShapeLayer()
    
    open var isTrackRequired: Bool = false
    
    open var progressClr = UIColor.white {
        didSet {
            progressLyr.strokeColor = progressClr.cgColor
        }
    }
    
    open var trackClr = UIColor.white {
        didSet {
            trackLyr.strokeColor = trackClr.cgColor
        }
    }
    
    private var circlePath: UIBezierPath {
        get {
            return UIBezierPath(arcCenter: CGPoint(x: frame.size.width/2,
                                                   y: frame.size.height/2),
                                radius: (frame.size.width - 1.5)/2,
                                startAngle: kStartAngle,
                                endAngle: kEndAngle,
                                clockwise: true)
        }
    }
    
    public required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        self.initHUD()
    }
    
    private func initHUD() {
        if isTrackRequired {
            drawCircularTrackPath()
        }
        drawCircularPath()
    }
    
    private func drawCircularTrackPath() {
        trackLyr.path = circlePath.cgPath
        trackLyr.fillColor = UIColor.clear.cgColor
        trackLyr.strokeColor = trackClr.cgColor
        trackLyr.lineWidth = 5.0
        trackLyr.strokeEnd = 1.0
        layer.addSublayer(trackLyr)
    }
    
    private func drawCircularPath() {
        progressLyr.path = circlePath.cgPath
        progressLyr.fillColor = UIColor.clear.cgColor
        progressLyr.strokeColor = progressClr.cgColor
        progressLyr.lineWidth = 10.0
        progressLyr.strokeEnd = 0.0
        layer.addSublayer(progressLyr)
    }
    
    func setProgressWithAnimation(duration: TimeInterval, value: Float) {
        var progressValue = value
        if progressLyr.strokeEnd >= 1 {
            progressValue = 0
        }
        let animation = CABasicAnimation(keyPath: "strokeEnd")
        animation.duration = duration
        animation.fromValue = progressLyr.strokeEnd
        animation.toValue = progressValue
        animation.timingFunction = CAMediaTimingFunction(name: CAMediaTimingFunctionName.linear)
        progressLyr.strokeEnd = CGFloat(progressValue)
        
        if progressValue > 0 {
            progressLyr.add(animation, forKey: "animateprogress")
        } else {
            progressLyr.removeAllAnimations()
        }
    }
}
