//
//  JDTabBarController.swift
//  JD-Swift
//
//  Created by zp on 17/5/9.
//  Copyright © 2017年 zp. All rights reserved.
//

import Foundation
import UIKit
class JDTabBarController: UITabBarController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    
    
    func addAllChildVcs() -> Void {
        let homeVC:HomeViewController = HomeViewController()
        self.addOneChidVc(childVc: homeVC, title: "首页", imageName: "tabBar_home_normal", selectedImage: "tabBar_home_press")
        
        let categoryVC:CategoryViewController = CategoryViewController()
        self.addOneChidVc(childVc: categoryVC, title: "首页", imageName: "tabBar_home_normal", selectedImage: "tabBar_home_press")

        
        let cartVC:CartViewController = CartViewController()
        self.addOneChidVc(childVc: cartVC, title: "首页", imageName: "tabBar_home_normal", selectedImage: "tabBar_home_press")

        
        let myVC:MyViewController = MyViewController()
        self.addOneChidVc(childVc: myVC, title: "首页", imageName: "tabBar_home_normal", selectedImage: "tabBar_home_press")

    }
    
    func addOneChidVc(childVc:UIViewController, title:String, imageName:String, selectedImage:String) -> Void {
        childVc.title = title
        childVc.tabBarItem.image = UIImage.init(named: imageName)
        
        let selectedImage = UIImage.init(named: selectedImage)
        if iOS7 {
//            selectedImage = selectedImage?.renderingMode = UIImageRenderingMode.alwaysOriginal
        }
        childVc.tabBarItem.selectedImage = selectedImage
        self.tabBar.backgroundImage = UIImage.init(named: "tabBar_bg")
        
        //添加导航控制器
        
        
    }
}
