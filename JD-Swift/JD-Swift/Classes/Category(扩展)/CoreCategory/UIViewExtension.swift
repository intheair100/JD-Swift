//
//  UIViewExtension.swift
//  JD-Swift
//
//  Created by zp on 17/5/13.
//  Copyright © 2017年 zp. All rights reserved.
//

import Foundation
import UIKit
extension UIView{
    func setX(x:CGFloat) -> Void {
        
        var frame:CGRect = self.frame
        frame.origin.x = x
        self.frame = frame
    }
    
    func x() -> CGFloat {
        return self.frame.origin.x
    }
    
    func setY(y:CGFloat) -> Void {
        var frame = self.frame
        frame.origin.y = y
        self.frame = frame
    }
    
    func y() -> CGFloat {
        return self.frame.origin.y
    }
    func setWidth(width:CGFloat) -> Void {
        var frame = self.frame
        frame.size.width = width
        self.frame = frame
    }
    
    func setHeight(height:CGFloat) -> Void {
        var frame = self.frame
        frame.size.width = height
        self.frame = frame
    }
    
    func setCenterX(centerX:CGFloat) -> Void {
        var center:CGPoint = self.center
        center.x = centerX
        self.center = center
    }
    
    func centerX() -> CGFloat {
        return self.center.x
    }

    func setCenterY(centerY:CGFloat) -> Void {
        var center:CGPoint = self.center
        center.y = centerY
        self.center = center
    }
    
    func centerY() -> CGFloat {
        return self.center.y
    }
    
    func height() -> CGFloat {
        return self.frame.size.height
    }
  
 }
