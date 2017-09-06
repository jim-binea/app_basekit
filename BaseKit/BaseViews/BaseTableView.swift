//
//  CustTableView.swift
//  YueXingRenTeacher
//
//  Created by jfb on 2016/11/3.
//  Copyright © 2016年 com.fugue.dosomi. All rights reserved.
//

import UIKit

class BaseTableView: UITableView {
    
    
    override init(frame: CGRect, style: UITableViewStyle) {
        super.init(frame: frame, style: style)
        self.showsVerticalScrollIndicator = false
        self.showsHorizontalScrollIndicator = false
        self.backgroundColor = UIColor.clear
        self.separatorStyle = .singleLine
        self.separatorInset = UIEdgeInsetsMake(0, 20, 0, 0)
        self.tableFooterView = UIView()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
}
