//
//  HomeViewController.swift
//  JD-Swift
//
//  Created by zp on 17/5/9.
//  Copyright © 2017年 zp. All rights reserved.
//

import Foundation
import UIKit
class HomeViewController: BaseViewController {

    var _searchBarL:UISearchBar?
    var _loadAvataView:UIView?
    var _tableView:UITableView?
    var topBtn:UIButton?
    var lastContentOffset:CGFloat?
    
    var _dataArray:NSMutableArray?
    
    var dataArray:NSMutableArray?{
        get{
            return _dataArray
        }
        set{
            _dataArray = newValue
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    
}
