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
    @IBOutlet weak var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        label.attributedText = "Vipul Patel".setString(.center, textFont: .systemFont(ofSize: 40), foregroundColor: .red)
    }
}

