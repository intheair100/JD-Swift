//
//  SearchBarView.swift
//  JD-Swift
//
//  Created by zp on 17/5/10.
//  Copyright © 2017年 zp. All rights reserved.
//

import UIKit

class SearchBarView: UIView {

    var placeholder:String?
    weak var delegate:SearchBarViewDelegate?
    var audioButton:UIButton? = nil
    var searchButton:UIButton? = nil
    var backgroundView:UIView? = nil
    let kXMargin:CGFloat = 8.0
    let kYMargin:CGFloat = 4.0
    let kIconSize:CGFloat = 20.0
    let kSearchBarHeight:CGFloat = 30.0

    func pressedSearch(sender:UIButton!) -> Void {
        
    }
    
    func setDefault() -> Void {
        let boundWith:CGFloat = self.bounds.size.width
        let boundHeight:CGFloat = self.bounds.size.height
        
        self.backgroundView = UIView.init(frame: CGRect.init(x: 0, y: 0, width: boundWith, height: boundHeight))
        let img:UIImageView = UIImageView.init(frame: CGRect.init(x: 0, y: 0, width: (self.backgroundView?.frame.size.width)!, height: (self.backgroundView?.frame.size.height)!))
        
        self.backgroundView?.addSubview(img)
        
        self.searchButton = UIButton.init(frame: CGRect.init(x: kIconSize * 2, y: 0, width: boundWith - kIconSize*4, height: boundHeight))
        
        self.searchButton?.contentHorizontalAlignment = UIControlContentHorizontalAlignment.left
        
        let defaultFont:UIFont = UIFont.init(name: "Avenir Next", size: 14)!
        self.searchButton?.titleLabel?.font = defaultFont
        self.searchButton?.setTitleColor(UIColor.lightGray, for: UIControlState.normal)
        self.searchButton?.titleEdgeInsets = UIEdgeInsetsMake(0, 0, 0, 0)
        self.searchButton?.setTitle("搜索京东商店/店铺", for: UIControlState.normal)
        self.searchButton?.addTarget(self, action: #selector(pressedSearch), for: UIControlEvents.touchUpInside)
        self.addSubview(self.searchButton!)
    }

    override init(frame: CGRect) {
        super.init(frame: frame)
        self.setDefault()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    

    
    

}
protocol SearchBarViewDelegate:class {
    func searchBarAudioButtonClicked(searchBarView:SearchBarView)->Void
    func searchBarSearchButtonClicked(searchbarView:SearchBarView) -> Void
    
}
