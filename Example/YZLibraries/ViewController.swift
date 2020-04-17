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

    override func viewDidLoad() {
        super.viewDidLoad()
        UIAlertController.show(title: "Title", message: "Message", style: .alert, buttons: ["Okay"], controller: self, userAction: nil)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

