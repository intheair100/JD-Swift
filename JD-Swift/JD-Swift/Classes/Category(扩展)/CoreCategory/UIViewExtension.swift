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
    
    
}
