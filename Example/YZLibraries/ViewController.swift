//
//  ViewController.swift
//  YZLibraries
//
//  Created by yudiz-vipul on 04/17/2020.
//  Copyright (c) 2020 yudiz-vipul. All rights reserved.
//

import UIKit
import YZLibraries

class ViewController: UIViewController {
    @IBOutlet weak var uiView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("YZAppConfig.designWidth\t: " + YZAppConfig.designWidth.description)
        print("YZAppConfig.designHeight\t: " + YZAppConfig.designHeight.description)
        print("YZAppConfig.navigationBarHeight\t: " + YZAppConfig.navigationBarHeight.description)
        print("YZAppConfig.heightOfNavigationBar\t: " + YZAppConfig.heightOfNavigationBar.description)
        print("YZAppConfig.widthRatio\t: " + YZAppConfig.widthRatio.description)
        print("YZAppConfig.heightRatio\t: " + YZAppConfig.heightRatio.description)
    }
}

