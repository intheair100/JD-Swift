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
    

    
    

}
protocol SearchBarViewDelegate:class {
    func searchBarAudioButtonClicked(searchBarView:SearchBarView)->Void
    func searchBarSearchButtonClicked(searchbarView:SearchBarView) -> Void
    
}
