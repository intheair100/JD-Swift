//
//  HomeViewController.swift
//  JD-Swift
//
//  Created by zp on 17/5/9.
//  Copyright © 2017年 zp. All rights reserved.
//

import Foundation
import UIKit
class HomeViewController: BaseViewController,SearchBarViewDelegate,UITableViewDelegate,UITableViewDataSource{

    var _searchBarL:UISearchBar?
    var _loadAvataView:UIView?
    var _tableView:UITableView?
    var topBtn:UIButton?
    var lastContentOffset:CGFloat?
    
    var _dataArray:NSMutableArray?
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = JDColor(r: 240, g: 243, b: 245)
        setupNavigationItem()
        _tableView = UITableView.init(frame: CGRect.init(x: 0, y: 0, width: self.view.frame.width, height: self.view.frame.height), style: UITableViewStyle.grouped)
        self.view.addSubview(_tableView!)
        
        
    }
    
    func setupNavigationItem() -> Void {
        self.navigationController?.navigationBar.barTintColor = UIColor.init(red: 27, green: 74, blue: 70, alpha: 1)
        let searchBarView:SearchBarView = SearchBarView.init(frame: CGRect.init(x: 0, y: 7, width: self.view.frame.size.width - 120, height: 30))
        searchBarView.delegate = self;
        self.navigationItem.titleView = searchBarView
    }
    
    func camera() -> Void {
        print("点击了扫一扫")
    }
    
    //SearchBarViewDelegate 方法
    func searchBarAudioButtonClicked(searchBarView: SearchBarView) {
        
    }
    func searchBarSearchButtonClicked(searchbarView: SearchBarView) {
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return (self._dataArray?.count)!;
    }
}
