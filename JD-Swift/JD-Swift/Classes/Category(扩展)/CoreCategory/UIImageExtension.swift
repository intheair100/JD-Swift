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
    
    /**
     *  争对ios7以上的系统适配新的图片资源
     *
     *  @param imageName 图片名称
     *
     *  @return 新的图片
     */
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
    
    func resizableImageWithName(imagName:String) -> UIImage {
        let image:UIImage = UIImage.init(named: imagName)!
        // 原有图片的宽高的一半
        let newImage:UIImage = image.resizableImage(withCapInsets: UIEdgeInsetsMake(image.size.height * 0.5, image.size.width * 0.5, image.size.height * 0.5, image.size.width * 0.5), resizingMode: UIImageResizingMode.stretch)
        return newImage
        
    }
    
    
    /**
     *  实现图片的缩小或者放大
     *
     *  @param image 原图
     *  @param size  大小范围
     *
     *  @return 新的图片
     */
    func scaleImageWithSize(size:CGSize) -> UIImage {
        UIGraphicsBeginImageContextWithOptions(size, false, 0)
        self.draw(in: CGRect.init(x: 0, y: 0, width: size.width, height: size.height))
        let scaledImage:UIImage = UIGraphicsGetImageFromCurrentImageContext()!
        UIGraphicsEndImageContext()
        return scaledImage
        
    }
    
    
    
}
