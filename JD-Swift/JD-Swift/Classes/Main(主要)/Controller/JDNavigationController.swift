//
//  JDNavigationController.swift
//  JD-Swift
//
//  Created by zp on 17/5/9.
//  Copyright © 2017年 zp. All rights reserved.
//

import Foundation
import UIKit

class JDNavigationController: UINavigationController {
    func showRightMenu() -> Void {
        
    }
   

    class func setupNavigationBarTheme(){
        let appearance:UINavigationBar = UINavigationBar.appearance()
        let textAttrs:NSMutableDictionary = NSMutableDictionary.init()
        textAttrs[NSForegroundColorAttributeName] = UIColor.black
        textAttrs[NSFontAttributeName] = JDNavigationFont
        if !iOS7 {
            appearance.setBackgroundImage(UIImage.init(named: "navigationbar_background"), for: UIBarMetrics.default)
            textAttrs[NSShadowAttributeName] = NSShadow.init()
        }
//        appearance.titleTextAttributes
    }
    
    override func pushViewController(_ viewController: UIViewController, animated: Bool) {
        if self.viewControllers.count > 0 {
            viewController.hidesBottomBarWhenPushed = true
        }
        super.pushViewController(viewController, animated: true)
    }
    
    func back() -> Void {
        self.popViewController(animated: true)
    }
}
