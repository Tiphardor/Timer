//
//  TimerStyleKit.swift
//  Timer
//
//  Created by Hardor on 15/12/31.
//  Copyright © 2015年 Hardor. All rights reserved.
//

import UIKit

public class TimerStyleKit : NSObject {
    
    //// Cache
    
    private struct Cache {
        static var backgroundColor: UIColor = UIColor(red: 0.141, green: 0.149, blue: 0.204, alpha: 1.000)
        static var timerColor: UIColor = UIColor(red: 0.378, green: 0.670, blue: 0.961, alpha: 1.000)
        static var imageOfSettings: UIImage?
        static var settingsTargets: [AnyObject]?
        static var imageOfInfo: UIImage?
        static var infoTargets: [AnyObject]?
    }
    
    //// Colors
    
    public class var backgroundColor: UIColor { return Cache.backgroundColor }
    public class var timerColor: UIColor { return Cache.timerColor }
    
    //// Drawing Methods
    
    public class func drawTimerAppIcon(durationInSeconds durationInSeconds: CGFloat, maxValue: CGFloat, diameter: CGFloat, dashGap: CGFloat) {
        //// General Declarations
        let context = UIGraphicsGetCurrentContext()
        
        
        //// Shadow Declarations
        let shadow = NSShadow()
        shadow.shadowColor = TimerStyleKit.timerColor
        shadow.shadowOffset = CGSizeMake(0.1, -0.1)
        shadow.shadowBlurRadius = 4
        
        //// Variable Declarations
        let endAngle: CGFloat = 90 - durationInSeconds * 360 / maxValue
        let minutes: CGFloat = floor(maxValue / 60.0)
        let dashLength: CGFloat = diameter * CGFloat(M_PI) / minutes - dashGap
        
        //// TimerRing Drawing
        var timerRingRect = CGRectMake(62, 62, diameter, diameter)
        let timerRingPath = UIBezierPath()
        timerRingPath.addArcWithCenter(CGPointMake(timerRingRect.midX, timerRingRect.midY), radius: timerRingRect.width / 2, startAngle: -90 * CGFloat(M_PI)/180, endAngle: -endAngle * CGFloat(M_PI)/180, clockwise: true)
        
        CGContextSaveGState(context)
        CGContextSetShadowWithColor(context, shadow.shadowOffset, shadow.shadowBlurRadius, (shadow.shadowColor as! UIColor).CGColor)
        TimerStyleKit.timerColor.setStroke()
        timerRingPath.lineWidth = 4
        CGContextSaveGState(context)
        CGContextSetLineDash(context, 0, [dashLength, dashGap], 2)
        timerRingPath.stroke()
        CGContextRestoreGState(context)
        CGContextRestoreGState(context)
    }
    
    public class func drawFiveMin(durationInSeconds durationInSeconds: CGFloat, maxValue: CGFloat, diameter: CGFloat, dashGap: CGFloat) {
        
        //// Variable Declarations
        let endAngle: CGFloat = 90 - durationInSeconds * 360 / maxValue
        let minutes: CGFloat = floor(maxValue / 60.0)
        let dashLength: CGFloat = diameter * CGFloat(M_PI) / minutes - dashGap
        
        //// TimerRing Drawing
        var timerRingRect = CGRectMake(6, 6, diameter, diameter)
        let timerRingPath = UIBezierPath()
        timerRingPath.addArcWithCenter(CGPointMake(timerRingRect.midX, timerRingRect.midY), radius: timerRingRect.width / 2, startAngle: -90 * CGFloat(M_PI)/180, endAngle: -endAngle * CGFloat(M_PI)/180, clockwise: true)
        
        TimerStyleKit.timerColor.setStroke()
        timerRingPath.lineWidth = 6
        timerRingPath.stroke()
    }
    
    public class func drawSettings() {
        //// Color Declarations
        let fillColor = UIColor(red: 0.000, green: 0.000, blue: 0.000, alpha: 1.000)
        
        //// Group 2
        //// Group 3
        //// Bezier Drawing
        let bezierPath = UIBezierPath()
        bezierPath.moveToPoint(CGPointMake(36.47, 18.63))
        bezierPath.addLineToPoint(CGPointMake(36.15, 17.53))
        bezierPath.addCurveToPoint(CGPointMake(33.49, 15.42), controlPoint1: CGPointMake(35.84, 16.32), controlPoint2: CGPointMake(34.74, 15.42))
        bezierPath.addCurveToPoint(CGPointMake(32.76, 15.53), controlPoint1: CGPointMake(33.23, 15.42), controlPoint2: CGPointMake(33.02, 15.47))
        bezierPath.addLineToPoint(CGPointMake(31.35, 15.89))
        bezierPath.addCurveToPoint(CGPointMake(30.04, 14.21), controlPoint1: CGPointMake(30.98, 15.26), controlPoint2: CGPointMake(30.56, 14.74))
        bezierPath.addLineToPoint(CGPointMake(30.62, 13.21))
        bezierPath.addCurveToPoint(CGPointMake(30.88, 11.05), controlPoint1: CGPointMake(30.98, 12.58), controlPoint2: CGPointMake(31.09, 11.79))
        bezierPath.addCurveToPoint(CGPointMake(29.57, 9.32), controlPoint1: CGPointMake(30.67, 10.32), controlPoint2: CGPointMake(30.25, 9.74))
        bezierPath.addLineToPoint(CGPointMake(28.58, 8.74))
        bezierPath.addCurveToPoint(CGPointMake(27.17, 8.37), controlPoint1: CGPointMake(28.16, 8.47), controlPoint2: CGPointMake(27.69, 8.37))
        bezierPath.addCurveToPoint(CGPointMake(24.77, 9.79), controlPoint1: CGPointMake(26.18, 8.37), controlPoint2: CGPointMake(25.24, 8.89))
        bezierPath.addLineToPoint(CGPointMake(24.19, 10.79))
        bezierPath.addCurveToPoint(CGPointMake(22.1, 10.53), controlPoint1: CGPointMake(23.51, 10.63), controlPoint2: CGPointMake(22.78, 10.53))
        bezierPath.addLineToPoint(CGPointMake(21.79, 9.11))
        bezierPath.addCurveToPoint(CGPointMake(19.12, 7), controlPoint1: CGPointMake(21.47, 7.89), controlPoint2: CGPointMake(20.38, 7))
        bezierPath.addCurveToPoint(CGPointMake(18.39, 7.11), controlPoint1: CGPointMake(18.86, 7), controlPoint2: CGPointMake(18.65, 7.05))
        bezierPath.addLineToPoint(CGPointMake(17.29, 7.42))
        bezierPath.addCurveToPoint(CGPointMake(15.62, 8.74), controlPoint1: CGPointMake(16.56, 7.63), controlPoint2: CGPointMake(15.99, 8.11))
        bezierPath.addCurveToPoint(CGPointMake(15.36, 10.89), controlPoint1: CGPointMake(15.26, 9.37), controlPoint2: CGPointMake(15.15, 10.16))
        bezierPath.addLineToPoint(CGPointMake(15.73, 12.37))
        bezierPath.addCurveToPoint(CGPointMake(14.16, 13.63), controlPoint1: CGPointMake(15.15, 12.74), controlPoint2: CGPointMake(14.63, 13.16))
        bezierPath.addLineToPoint(CGPointMake(13.22, 13.11))
        bezierPath.addCurveToPoint(CGPointMake(11.81, 12.74), controlPoint1: CGPointMake(12.8, 12.84), controlPoint2: CGPointMake(12.33, 12.74))
        bezierPath.addCurveToPoint(CGPointMake(9.41, 14.16), controlPoint1: CGPointMake(10.82, 12.74), controlPoint2: CGPointMake(9.88, 13.26))
        bezierPath.addLineToPoint(CGPointMake(8.83, 15.16))
        bezierPath.addCurveToPoint(CGPointMake(8.52, 17.16), controlPoint1: CGPointMake(8.41, 15.68), controlPoint2: CGPointMake(8.36, 16.47))
        bezierPath.addCurveToPoint(CGPointMake(9.82, 18.89), controlPoint1: CGPointMake(8.73, 17.89), controlPoint2: CGPointMake(9.14, 18.47))
        bezierPath.addLineToPoint(CGPointMake(10.76, 19.47))
        bezierPath.addCurveToPoint(CGPointMake(10.5, 21.53), controlPoint1: CGPointMake(10.61, 20.16), controlPoint2: CGPointMake(10.5, 20.84))
        bezierPath.addLineToPoint(CGPointMake(9.04, 21.89))
        bezierPath.addCurveToPoint(CGPointMake(7.37, 23.21), controlPoint1: CGPointMake(8.31, 22.11), controlPoint2: CGPointMake(7.73, 22.58))
        bezierPath.addCurveToPoint(CGPointMake(7.11, 25.37), controlPoint1: CGPointMake(7, 23.84), controlPoint2: CGPointMake(6.9, 24.63))
        bezierPath.addLineToPoint(CGPointMake(7.32, 26.47))
        bezierPath.addCurveToPoint(CGPointMake(9.98, 28.58), controlPoint1: CGPointMake(7.63, 27.68), controlPoint2: CGPointMake(8.73, 28.58))
        bezierPath.addCurveToPoint(CGPointMake(10.71, 28.47), controlPoint1: CGPointMake(10.24, 28.58), controlPoint2: CGPointMake(10.45, 28.53))
        bezierPath.addLineToPoint(CGPointMake(12.23, 28.05))
        bezierPath.addCurveToPoint(CGPointMake(13.48, 29.68), controlPoint1: CGPointMake(12.59, 28.63), controlPoint2: CGPointMake(13.01, 29.16))
        bezierPath.addLineToPoint(CGPointMake(12.96, 30.63))
        bezierPath.addCurveToPoint(CGPointMake(12.7, 32.79), controlPoint1: CGPointMake(12.59, 31.26), controlPoint2: CGPointMake(12.49, 32.05))
        bezierPath.addCurveToPoint(CGPointMake(14, 34.53), controlPoint1: CGPointMake(12.91, 33.53), controlPoint2: CGPointMake(13.32, 34.11))
        bezierPath.addLineToPoint(CGPointMake(15, 35.11))
        bezierPath.addCurveToPoint(CGPointMake(16.41, 35.47), controlPoint1: CGPointMake(15.41, 35.37), controlPoint2: CGPointMake(15.88, 35.47))
        bezierPath.addCurveToPoint(CGPointMake(18.81, 34.05), controlPoint1: CGPointMake(17.4, 35.47), controlPoint2: CGPointMake(18.34, 34.95))
        bezierPath.addLineToPoint(CGPointMake(19.33, 33.11))
        bezierPath.addCurveToPoint(CGPointMake(21.32, 33.37), controlPoint1: CGPointMake(20.01, 33.26), controlPoint2: CGPointMake(20.64, 33.37))
        bezierPath.addLineToPoint(CGPointMake(21.74, 34.89))
        bezierPath.addCurveToPoint(CGPointMake(24.4, 37), controlPoint1: CGPointMake(22.05, 36.11), controlPoint2: CGPointMake(23.15, 37))
        bezierPath.addCurveToPoint(CGPointMake(25.13, 36.89), controlPoint1: CGPointMake(24.66, 37), controlPoint2: CGPointMake(24.87, 36.95))
        bezierPath.addLineToPoint(CGPointMake(26.23, 36.58))
        bezierPath.addCurveToPoint(CGPointMake(28.21, 33.11), controlPoint1: CGPointMake(27.69, 36.16), controlPoint2: CGPointMake(28.58, 34.63))
        bezierPath.addLineToPoint(CGPointMake(27.8, 31.58))
        bezierPath.addCurveToPoint(CGPointMake(29.42, 30.32), controlPoint1: CGPointMake(28.37, 31.21), controlPoint2: CGPointMake(28.89, 30.79))
        bezierPath.addLineToPoint(CGPointMake(30.36, 30.89))
        bezierPath.addCurveToPoint(CGPointMake(31.77, 31.26), controlPoint1: CGPointMake(30.77, 31.16), controlPoint2: CGPointMake(31.24, 31.26))
        bezierPath.addCurveToPoint(CGPointMake(34.17, 29.84), controlPoint1: CGPointMake(32.76, 31.26), controlPoint2: CGPointMake(33.7, 30.74))
        bezierPath.addLineToPoint(CGPointMake(34.74, 28.84))
        bezierPath.addCurveToPoint(CGPointMake(35.01, 26.68), controlPoint1: CGPointMake(35.11, 28.21), controlPoint2: CGPointMake(35.21, 27.42))
        bezierPath.addCurveToPoint(CGPointMake(33.7, 24.95), controlPoint1: CGPointMake(34.8, 25.95), controlPoint2: CGPointMake(34.38, 25.37))
        bezierPath.addLineToPoint(CGPointMake(32.76, 24.42))
        bezierPath.addCurveToPoint(CGPointMake(33.02, 22.42), controlPoint1: CGPointMake(32.92, 23.74), controlPoint2: CGPointMake(33.02, 23.11))
        bezierPath.addLineToPoint(CGPointMake(34.48, 22.05))
        bezierPath.addCurveToPoint(CGPointMake(36.15, 20.74), controlPoint1: CGPointMake(35.21, 21.84), controlPoint2: CGPointMake(35.79, 21.37))
        bezierPath.addCurveToPoint(CGPointMake(36.47, 18.63), controlPoint1: CGPointMake(36.52, 20.11), controlPoint2: CGPointMake(36.63, 19.37))
        bezierPath.closePath()
        bezierPath.moveToPoint(CGPointMake(35.27, 20.26))
        bezierPath.addCurveToPoint(CGPointMake(34.22, 21.11), controlPoint1: CGPointMake(35.06, 20.68), controlPoint2: CGPointMake(34.64, 20.95))
        bezierPath.addLineToPoint(CGPointMake(32.03, 21.68))
        bezierPath.addLineToPoint(CGPointMake(32.03, 22.11))
        bezierPath.addCurveToPoint(CGPointMake(31.66, 24.63), controlPoint1: CGPointMake(32.03, 22.95), controlPoint2: CGPointMake(31.92, 23.79))
        bezierPath.addLineToPoint(CGPointMake(31.56, 25))
        bezierPath.addLineToPoint(CGPointMake(33.18, 25.95))
        bezierPath.addCurveToPoint(CGPointMake(34.01, 27), controlPoint1: CGPointMake(33.59, 26.16), controlPoint2: CGPointMake(33.86, 26.58))
        bezierPath.addCurveToPoint(CGPointMake(33.86, 28.32), controlPoint1: CGPointMake(34.12, 27.47), controlPoint2: CGPointMake(34.07, 27.95))
        bezierPath.addLineToPoint(CGPointMake(33.28, 29.32))
        bezierPath.addCurveToPoint(CGPointMake(31.77, 30.21), controlPoint1: CGPointMake(32.97, 29.84), controlPoint2: CGPointMake(32.39, 30.21))
        bezierPath.addCurveToPoint(CGPointMake(30.88, 29.95), controlPoint1: CGPointMake(31.45, 30.21), controlPoint2: CGPointMake(31.14, 30.11))
        bezierPath.addLineToPoint(CGPointMake(29.26, 29))
        bezierPath.addLineToPoint(CGPointMake(29, 29.26))
        bezierPath.addCurveToPoint(CGPointMake(26.96, 30.84), controlPoint1: CGPointMake(28.37, 29.89), controlPoint2: CGPointMake(27.69, 30.42))
        bezierPath.addLineToPoint(CGPointMake(26.59, 31.05))
        bezierPath.addLineToPoint(CGPointMake(27.22, 33.37))
        bezierPath.addCurveToPoint(CGPointMake(25.97, 35.53), controlPoint1: CGPointMake(27.48, 34.32), controlPoint2: CGPointMake(26.91, 35.26))
        bezierPath.addLineToPoint(CGPointMake(24.87, 35.84))
        bezierPath.addCurveToPoint(CGPointMake(24.4, 35.95), controlPoint1: CGPointMake(24.71, 35.95), controlPoint2: CGPointMake(24.56, 35.95))
        bezierPath.addCurveToPoint(CGPointMake(22.73, 34.63), controlPoint1: CGPointMake(23.62, 35.95), controlPoint2: CGPointMake(22.94, 35.42))
        bezierPath.addLineToPoint(CGPointMake(22.1, 32.32))
        bezierPath.addLineToPoint(CGPointMake(21.68, 32.32))
        bezierPath.addCurveToPoint(CGPointMake(19.18, 31.95), controlPoint1: CGPointMake(20.85, 32.32), controlPoint2: CGPointMake(20.01, 32.21))
        bezierPath.addLineToPoint(CGPointMake(18.81, 31.84))
        bezierPath.addLineToPoint(CGPointMake(17.87, 33.47))
        bezierPath.addCurveToPoint(CGPointMake(16.35, 34.37), controlPoint1: CGPointMake(17.56, 34), controlPoint2: CGPointMake(16.98, 34.37))
        bezierPath.addCurveToPoint(CGPointMake(15.47, 34.16), controlPoint1: CGPointMake(16.04, 34.37), controlPoint2: CGPointMake(15.73, 34.26))
        bezierPath.addLineToPoint(CGPointMake(14.47, 33.58))
        bezierPath.addCurveToPoint(CGPointMake(13.64, 32.53), controlPoint1: CGPointMake(14.06, 33.32), controlPoint2: CGPointMake(13.79, 32.95))
        bezierPath.addCurveToPoint(CGPointMake(13.79, 31.21), controlPoint1: CGPointMake(13.53, 32.05), controlPoint2: CGPointMake(13.58, 31.58))
        bezierPath.addLineToPoint(CGPointMake(14.73, 29.58))
        bezierPath.addLineToPoint(CGPointMake(14.47, 29.32))
        bezierPath.addCurveToPoint(CGPointMake(12.91, 27.26), controlPoint1: CGPointMake(13.85, 28.68), controlPoint2: CGPointMake(13.32, 28))
        bezierPath.addLineToPoint(CGPointMake(12.7, 26.89))
        bezierPath.addLineToPoint(CGPointMake(10.4, 27.53))
        bezierPath.addCurveToPoint(CGPointMake(10.03, 27.53), controlPoint1: CGPointMake(10.35, 27.53), controlPoint2: CGPointMake(10.19, 27.53))
        bezierPath.addCurveToPoint(CGPointMake(8.36, 26.21), controlPoint1: CGPointMake(9.25, 27.53), controlPoint2: CGPointMake(8.57, 27))
        bezierPath.addLineToPoint(CGPointMake(8.05, 25.11))
        bezierPath.addCurveToPoint(CGPointMake(8.2, 23.79), controlPoint1: CGPointMake(7.94, 24.63), controlPoint2: CGPointMake(7.99, 24.16))
        bezierPath.addCurveToPoint(CGPointMake(9.25, 22.95), controlPoint1: CGPointMake(8.41, 23.37), controlPoint2: CGPointMake(8.83, 23.11))
        bezierPath.addLineToPoint(CGPointMake(11.5, 22.32))
        bezierPath.addLineToPoint(CGPointMake(11.5, 21.89))
        bezierPath.addCurveToPoint(CGPointMake(11.81, 19.32), controlPoint1: CGPointMake(11.5, 21.05), controlPoint2: CGPointMake(11.6, 20.16))
        bezierPath.addLineToPoint(CGPointMake(11.91, 18.95))
        bezierPath.addLineToPoint(CGPointMake(10.29, 18))
        bezierPath.addCurveToPoint(CGPointMake(9.46, 16.95), controlPoint1: CGPointMake(9.88, 17.74), controlPoint2: CGPointMake(9.61, 17.37))
        bezierPath.addCurveToPoint(CGPointMake(9.61, 15.63), controlPoint1: CGPointMake(9.35, 16.47), controlPoint2: CGPointMake(9.41, 16))
        bezierPath.addLineToPoint(CGPointMake(10.19, 14.63))
        bezierPath.addCurveToPoint(CGPointMake(11.7, 13.74), controlPoint1: CGPointMake(10.5, 14.11), controlPoint2: CGPointMake(11.08, 13.74))
        bezierPath.addCurveToPoint(CGPointMake(12.59, 14), controlPoint1: CGPointMake(12.02, 13.74), controlPoint2: CGPointMake(12.33, 13.84))
        bezierPath.addLineToPoint(CGPointMake(14.26, 14.89))
        bezierPath.addLineToPoint(CGPointMake(14.53, 14.63))
        bezierPath.addCurveToPoint(CGPointMake(16.51, 13.05), controlPoint1: CGPointMake(15.15, 14), controlPoint2: CGPointMake(15.83, 13.47))
        bezierPath.addLineToPoint(CGPointMake(16.88, 12.79))
        bezierPath.addLineToPoint(CGPointMake(16.3, 10.58))
        bezierPath.addCurveToPoint(CGPointMake(16.46, 9.26), controlPoint1: CGPointMake(16.2, 10.11), controlPoint2: CGPointMake(16.25, 9.63))
        bezierPath.addCurveToPoint(CGPointMake(17.5, 8.42), controlPoint1: CGPointMake(16.67, 8.84), controlPoint2: CGPointMake(17.09, 8.58))
        bezierPath.addLineToPoint(CGPointMake(18.6, 8.11))
        bezierPath.addCurveToPoint(CGPointMake(20.74, 9.37), controlPoint1: CGPointMake(19.54, 7.84), controlPoint2: CGPointMake(20.48, 8.42))
        bezierPath.addLineToPoint(CGPointMake(21.21, 11.16))
        bezierPath.addLineToPoint(CGPointMake(21.37, 11.53))
        bezierPath.addLineToPoint(CGPointMake(21.79, 11.53))
        bezierPath.addCurveToPoint(CGPointMake(24.4, 11.89), controlPoint1: CGPointMake(22.68, 11.53), controlPoint2: CGPointMake(23.51, 11.63))
        bezierPath.addLineToPoint(CGPointMake(24.77, 12))
        bezierPath.addLineToPoint(CGPointMake(25.71, 10.32))
        bezierPath.addCurveToPoint(CGPointMake(27.22, 9.42), controlPoint1: CGPointMake(26.02, 9.79), controlPoint2: CGPointMake(26.59, 9.42))
        bezierPath.addCurveToPoint(CGPointMake(28.11, 9.68), controlPoint1: CGPointMake(27.53, 9.42), controlPoint2: CGPointMake(27.85, 9.53))
        bezierPath.addLineToPoint(CGPointMake(29.1, 10.26))
        bezierPath.addCurveToPoint(CGPointMake(29.94, 11.32), controlPoint1: CGPointMake(29.52, 10.47), controlPoint2: CGPointMake(29.78, 10.89))
        bezierPath.addCurveToPoint(CGPointMake(29.78, 12.63), controlPoint1: CGPointMake(30.04, 11.79), controlPoint2: CGPointMake(29.99, 12.26))
        bezierPath.addLineToPoint(CGPointMake(28.79, 14.37))
        bezierPath.addLineToPoint(CGPointMake(29.05, 14.63))
        bezierPath.addCurveToPoint(CGPointMake(30.67, 16.79), controlPoint1: CGPointMake(29.68, 15.26), controlPoint2: CGPointMake(30.2, 16))
        bezierPath.addLineToPoint(CGPointMake(30.88, 17.16))
        bezierPath.addLineToPoint(CGPointMake(33.02, 16.58))
        bezierPath.addCurveToPoint(CGPointMake(35.16, 17.84), controlPoint1: CGPointMake(33.96, 16.32), controlPoint2: CGPointMake(34.9, 16.89))
        bezierPath.addLineToPoint(CGPointMake(35.48, 18.95))
        bezierPath.addCurveToPoint(CGPointMake(35.27, 20.26), controlPoint1: CGPointMake(35.58, 19.37), controlPoint2: CGPointMake(35.53, 19.84))
        bezierPath.closePath()
        bezierPath.moveToPoint(CGPointMake(21.74, 15.89))
        bezierPath.addCurveToPoint(CGPointMake(15.73, 22), controlPoint1: CGPointMake(18.44, 15.89), controlPoint2: CGPointMake(15.73, 18.63))
        bezierPath.addCurveToPoint(CGPointMake(21.74, 28.11), controlPoint1: CGPointMake(15.73, 25.37), controlPoint2: CGPointMake(18.44, 28.11))
        bezierPath.addCurveToPoint(CGPointMake(27.74, 22), controlPoint1: CGPointMake(25.03, 28.11), controlPoint2: CGPointMake(27.74, 25.37))
        bezierPath.addCurveToPoint(CGPointMake(21.74, 15.89), controlPoint1: CGPointMake(27.74, 18.63), controlPoint2: CGPointMake(25.08, 15.89))
        bezierPath.closePath()
        bezierPath.moveToPoint(CGPointMake(21.74, 27.05))
        bezierPath.addCurveToPoint(CGPointMake(16.77, 22), controlPoint1: CGPointMake(18.97, 27.05), controlPoint2: CGPointMake(16.77, 24.79))
        bezierPath.addCurveToPoint(CGPointMake(21.74, 16.95), controlPoint1: CGPointMake(16.77, 19.21), controlPoint2: CGPointMake(19.02, 16.95))
        bezierPath.addCurveToPoint(CGPointMake(26.7, 22), controlPoint1: CGPointMake(24.45, 16.95), controlPoint2: CGPointMake(26.7, 19.21))
        bezierPath.addCurveToPoint(CGPointMake(21.74, 27.05), controlPoint1: CGPointMake(26.7, 24.79), controlPoint2: CGPointMake(24.5, 27.05))
        bezierPath.closePath()
        bezierPath.miterLimit = 4;
        
        fillColor.setFill()
        bezierPath.fill()
    }
    
    public class func drawInfo() {
        //// Color Declarations
        let fillColor = UIColor(red: 0.000, green: 0.000, blue: 0.000, alpha: 1.000)
        
        //// Group 2
        //// Group 3
        //// Bezier Drawing
        let bezierPath = UIBezierPath()
        bezierPath.moveToPoint(CGPointMake(22, 7))
        bezierPath.addCurveToPoint(CGPointMake(7, 22), controlPoint1: CGPointMake(13.75, 7), controlPoint2: CGPointMake(7, 13.75))
        bezierPath.addCurveToPoint(CGPointMake(22, 37), controlPoint1: CGPointMake(7, 30.25), controlPoint2: CGPointMake(13.75, 37))
        bezierPath.addCurveToPoint(CGPointMake(37, 22), controlPoint1: CGPointMake(30.25, 37), controlPoint2: CGPointMake(37, 30.25))
        bezierPath.addCurveToPoint(CGPointMake(22, 7), controlPoint1: CGPointMake(37, 13.75), controlPoint2: CGPointMake(30.25, 7))
        bezierPath.closePath()
        bezierPath.moveToPoint(CGPointMake(22, 35.85))
        bezierPath.addCurveToPoint(CGPointMake(8.15, 22), controlPoint1: CGPointMake(14.38, 35.85), controlPoint2: CGPointMake(8.15, 29.62))
        bezierPath.addCurveToPoint(CGPointMake(22, 8.15), controlPoint1: CGPointMake(8.15, 14.38), controlPoint2: CGPointMake(14.38, 8.15))
        bezierPath.addCurveToPoint(CGPointMake(35.85, 22), controlPoint1: CGPointMake(29.62, 8.15), controlPoint2: CGPointMake(35.85, 14.38))
        bezierPath.addCurveToPoint(CGPointMake(22, 35.85), controlPoint1: CGPointMake(35.85, 29.62), controlPoint2: CGPointMake(29.62, 35.85))
        bezierPath.closePath()
        bezierPath.moveToPoint(CGPointMake(22, 12.77))
        bezierPath.addCurveToPoint(CGPointMake(20.62, 14.15), controlPoint1: CGPointMake(21.25, 12.77), controlPoint2: CGPointMake(20.62, 13.4))
        bezierPath.addCurveToPoint(CGPointMake(22, 15.54), controlPoint1: CGPointMake(20.62, 14.9), controlPoint2: CGPointMake(21.25, 15.54))
        bezierPath.addCurveToPoint(CGPointMake(23.38, 14.15), controlPoint1: CGPointMake(22.75, 15.54), controlPoint2: CGPointMake(23.38, 14.9))
        bezierPath.addCurveToPoint(CGPointMake(22, 12.77), controlPoint1: CGPointMake(23.38, 13.35), controlPoint2: CGPointMake(22.81, 12.77))
        bezierPath.closePath()
        bezierPath.moveToPoint(CGPointMake(22, 19.12))
        bezierPath.addCurveToPoint(CGPointMake(21.42, 19.69), controlPoint1: CGPointMake(21.65, 19.12), controlPoint2: CGPointMake(21.42, 19.35))
        bezierPath.addLineToPoint(CGPointMake(21.42, 30.65))
        bezierPath.addCurveToPoint(CGPointMake(22, 31.23), controlPoint1: CGPointMake(21.42, 31), controlPoint2: CGPointMake(21.65, 31.23))
        bezierPath.addCurveToPoint(CGPointMake(22.58, 30.65), controlPoint1: CGPointMake(22.35, 31.23), controlPoint2: CGPointMake(22.58, 31))
        bezierPath.addLineToPoint(CGPointMake(22.58, 19.69))
        bezierPath.addCurveToPoint(CGPointMake(22, 19.12), controlPoint1: CGPointMake(22.58, 19.4), controlPoint2: CGPointMake(22.35, 19.12))
        bezierPath.closePath()
        bezierPath.miterLimit = 4;
        
        fillColor.setFill()
        bezierPath.fill()
    }
    
    //// Generated Images
    
    public class var imageOfSettings: UIImage {
        if Cache.imageOfSettings != nil {
            return Cache.imageOfSettings!
        }
        
        UIGraphicsBeginImageContextWithOptions(CGSizeMake(44, 44), false, 0)
        TimerStyleKit.drawSettings()
        
        Cache.imageOfSettings = UIGraphicsGetImageFromCurrentImageContext().imageWithRenderingMode(UIImageRenderingMode.AlwaysTemplate)
        UIGraphicsEndImageContext()
        
        return Cache.imageOfSettings!
    }
    
    public class var imageOfInfo: UIImage {
        if Cache.imageOfInfo != nil {
            return Cache.imageOfInfo!
        }
        
        UIGraphicsBeginImageContextWithOptions(CGSizeMake(44, 44), false, 0)
        TimerStyleKit.drawInfo()
        
        Cache.imageOfInfo = UIGraphicsGetImageFromCurrentImageContext().imageWithRenderingMode(UIImageRenderingMode.AlwaysTemplate)
        UIGraphicsEndImageContext()
        
        return Cache.imageOfInfo!
    }
    
    //// Customization Infrastructure
    
    @IBOutlet var settingsTargets: [AnyObject]! {
        get { return Cache.settingsTargets }
        set {
            Cache.settingsTargets = newValue
            for target: AnyObject in newValue {
                target.setImage(TimerStyleKit.imageOfSettings)
            }
        }
    }
    
    @IBOutlet var infoTargets: [AnyObject]! {
        get { return Cache.infoTargets }
        set {
            Cache.infoTargets = newValue
            for target: AnyObject in newValue {
                target.setImage(TimerStyleKit.imageOfInfo)
            }
        }
    }
    
}

@objc protocol StyleKitSettableImage {
    func setImage(image: UIImage!)
}

@objc protocol StyleKitSettableSelectedImage {
    func setSelectedImage(image: UIImage!)
}

