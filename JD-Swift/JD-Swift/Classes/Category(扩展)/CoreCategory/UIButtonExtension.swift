//
//  UIButtonExtension.swift
//  JD-Swift
//
//  Created by zp on 17/5/13.
//  Copyright © 2017年 zp. All rights reserved.
//

import Foundation
import UIKit
extension UIButton{

    /**
     *  UIButton文字图片垂直显示
     *
     *  @param image    图片
     *  @param title    文字
     *  @param target   self
     *  @param selector 点击时间
     *
     *  @return 返回button
     */
    static func createButton(image:String,title:String,target:AnyObject,selector:Selector) -> UIButton {
        let button:UIButton = UIButton.init()
        let image:UIImage = UIImage.init(named: image)!
        button.setImage(image, for: UIControlState.normal)
        button.setImage(UIImage.imageWithName(imageName: ""), for: UIControlState.highlighted)
        if !title.isEmpty {
            button.setTitle(title, for: UIControlState.normal)
            button.setTitleColor(UIColor.gray, for: UIControlState.normal)
            button.setTitleColor(nil, for: UIControlState.highlighted)
            button.titleLabel?.font = UIFont.systemFont(ofSize: 14)
        }
        button.contentHorizontalAlignment = UIControlContentHorizontalAlignment.center
        button.imageEdgeInsets = UIEdgeInsetsMake(0, 18, 20, 0)
        button.titleEdgeInsets = UIEdgeInsetsMake(40, -35, 0, 0)
        button.addTarget(target, action: selector, for: UIControlEvents.touchUpInside)
        return button
    }
    
    /**
     *  文字按钮
     *
     *  @param frame    尺寸
     *  @param title    标题
     *  @param target   self
     *  @param selector 点击事件
     *
     *  @return 返回button
     */
    static func createButton(frame:CGRect,title:String,target:AnyObject,selector:Selector) -> UIButton {
        let button:UIButton = UIButton.init(type: UIButtonType.roundedRect)
        button.frame = frame
        button.setTitle(title, for: UIControlState.normal)
        button.addTarget(target, action: selector, for: UIControlEvents.touchUpInside)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 12)
        button.setTitleColor(UIColor.gray, for: UIControlState.normal)
        return button
    }
    
    static func createButton(title:String,image:String,target:AnyObject,selector:Selector) -> UIButton {
        let button:UIButton = UIButton.init()
        button.setTitle(title, for: UIControlState.normal)
        button.setTitleColor(UIColor.gray, for: UIControlState.normal)
        button.titleEdgeInsets = UIEdgeInsetsMake(0, 16, 0, 0)
        button.setImage(UIImage.imageWithName(imageName: image), for: UIControlState.normal)
        button.setImage(UIImage.imageWithName(imageName: ""), for: UIControlState.highlighted)
        button.addTarget(target, action: selector, for: UIControlEvents.touchUpInside)
        return button
        
        
    }
    
    
}
