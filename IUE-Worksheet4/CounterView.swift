//
//  CounterView.swift
//  IUE-Worksheet4
//
//  Created by formando on 30/10/2019.
//  Copyright © 2019 pt.ipleiria. All rights reserved.
//

import UIKit
@IBDesignable
class CounterView: UIView {
    @IBInspectable var maxNumber: Int = 12
    @IBInspectable var currentNumber: Int = 3
    @IBInspectable var circleColor: UIColor = UIColor.orange
    @IBInspectable var barColor: UIColor = UIColor.systemBlue
    override func draw(_ rect: CGRect) {
        let circle = UIBezierPath(ovalIn: bounds)
        circleColor.setFill()
        circle.fill()
        let center = CGPoint(x: bounds.width/2, y: bounds.height/2)
        let startAngle: CGFloat = -.pi / 2
        let difference = 2 * CGFloat.pi / CGFloat(maxNumber)
        let endAngle = startAngle + CGFloat(currentNumber) * CGFloat(difference)
        let lineWidth: CGFloat = 10
        let bar = UIBezierPath(arcCenter: center, radius: bounds.width/2 - CGFloat(lineWidth / 2), startAngle: startAngle, endAngle: endAngle, clockwise: true)
        bar.lineWidth = lineWidth
        barColor.setStroke()
        bar.stroke()
    }
}


