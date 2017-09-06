//
//  ViewModel.swift
//  Binea
//
//  Created by binea on 2017/3/12.
//  Copyright © 2017年 binea. All rights reserved.
//

import Foundation
import Common

//view binding object
public protocol ViewBinding {
    
}

class ViewModel {
    deinit {
        SLog.debug("\(type(of: self)) released!")
    }
}
