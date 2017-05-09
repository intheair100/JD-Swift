//
//  MacroDefine.swift
//  JD-Swift
//
//  Created by zp on 17/5/9.
//  Copyright © 2017年 zp. All rights reserved.
//

import Foundation
import UIKit

let iOS7 = Double(UIDevice.version()) >= 7.0 ? true: false
let iOS8 = Double(UIDevice.version()) >= 8.0 ? true: false
let USER_TABLE_SQL = "CREATE TABLE IF NOT EXISTS `user` (`id` INTEGER PRIMARY KEY AUTOINCREMENT, `user_id` VARCHAR(20) UNIQUE NOT NULL,`user_phone` VARCHAR(20) NOT NULL,`user_pwd` NOT NULL,`time` VARCHAR(20) NOT NULL,'user_name' VARCHAR(20) ,commodity,shop,record)"

//导航栏标题字体大小
let JDNavigationFont = UIFont.boldSystemFont(ofSize: 16)

//颜色
func JDColor(r:CGFloat,g:CGFloat,b:CGFloat) -> UIColor {
    return UIColor.init(colorLiteralRed: Float(r/255.0), green: Float(g/255.0), blue: Float(b/255.0), alpha: 1.0)
}

func rgba(r:CGFloat,g:CGFloat,b:CGFloat,a:Float) -> UIColor {
    return UIColor.init(colorLiteralRed: Float(r/255.0), green: Float(g/255.0), blue: Float(b/255.0), alpha: a)
}

func JDCommonColor() -> UIColor {
    return rgba(r: 0.478, g: 0.478, b: 0.478, a: 1.0)
}

////日至输出
//#ifdef DEBUG
//#   define DLog(fmt, ...) NSLog((@"%s [Line %d] " fmt), __PRETTY_FUNCTION__, __LINE__, ##__VA_ARGS__);
//#else
//#   define DLog(...)
//#endif
//
//#endif /* JDPrefixHeader_pch */
