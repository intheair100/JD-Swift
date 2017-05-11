//
//  UIImage+Extension.swift
//  JD-Swift
//
//  Created by zp on 19/5/11.
//  Copyright © 2019年 zp. All rights reserved.
//

import Foundation
import UIKit
extension UIImage{
    static func imageWithName(imageName:String) -> UIImage {
        var newImage:UIImage? = nil
        if iOS7 {
            newImage = UIImage.init(named: imageName + "_os7")!
        }
        if newImage == nil {
            newImage = UIImage.init(named: imageName)!
        }
        return newImage!
    }
}
