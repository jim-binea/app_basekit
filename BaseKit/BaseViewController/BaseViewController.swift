//
//  BaseViewController.swift
//  Binea
//
//  Created by Leo on 2017/3/4.
//  Copyright © 2017年 binea. All rights reserved.
//

import UIKit
import RxSwift
import Common

class BaseViewController: UIViewController {
    
    let disposeBag: DisposeBag = DisposeBag()
    var isNavigationBarHidden = false
    
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nil, bundle: nil)
        self.automaticallyAdjustsScrollViewInsets = false
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        self.automaticallyAdjustsScrollViewInsets = false
    }
    
    deinit {
        SLog.debug("\(type(of: self)) released!")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.isNavigationBarHidden = isNavigationBarHidden
    }
    
    let backButton = UIButton()
    func setDefaultBackButton() {
        backButton.apply { (button) in
            button.setImage(#imageLiteral(resourceName: "bt_jieguo_back_normal"), for: UIControlState.normal)
            button.frame.size = CGSize(width: 18, height: 18)
            button.setEnlargeEdge(top: 10, right: 20, bottom: 10, left: 15)
            button.addTarget(self, action: #selector(defaultBackButtonTapped(sender:)), for: UIControlEvents.touchUpInside)
        }
        navigationItem.leftBarButtonItem = UIBarButtonItem(customView: backButton)
    }
    
    func defaultBackButtonTapped(sender: Any) {
        _ = navigationController?.popViewController(animated: true)
    }
    
}
