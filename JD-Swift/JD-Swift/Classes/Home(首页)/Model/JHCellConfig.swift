//
//  JHCellConfig.swift
//  JD-Swift
//
//  Created by zp on 17/6/9.
//  Copyright © 2017年 zp. All rights reserved.
//

import Foundation
import UIKit
class JHCellConfig: NSObject {
    var className:NSString? = nil
    var title:NSString? = nil
    var showInfoMethod:Selector? = nil
    var heightOfCell:CGFloat = 0
    var detail:NSString? = nil
    var remark:NSString? = nil
    
    static func cellConfigWithClassName(className:NSString,title:NSString) -> JHCellConfig {
        let cellConfig:JHCellConfig = JHCellConfig.init()
        cellConfig.className = className
        cellConfig.title = title
        return cellConfig
    }
    
    
    
    
    
}
