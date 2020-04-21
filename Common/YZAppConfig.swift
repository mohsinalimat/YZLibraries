//
//  YZAppConfig.swift
//  YZLibraries
//
//  Created by Vipul Patel on 21/04/20.
//

import UIKit

//MARK: - Global Variable(s)
var _appDelegate = UIApplication.shared.delegate!

//MARK: - Class YZAppConfig
class YZAppConfig: NSObject {
    public static var navigationBarHeight: CGFloat!
    public static var designWidth: CGFloat!
    public static var designHeight: CGFloat!
    public static let width        = UIScreen.main.bounds.size.width
    public static let height       = UIScreen.main.bounds.size.height
    public static var widthRatio: CGFloat {return width/designWidth}
    public static var heightRatio: CGFloat {return height/designHeight}
    public static var safeAreaInsets: UIEdgeInsets {return _appDelegate.window!!.safeAreaInsets}
    public static var heightOfNavigationBar: CGFloat {return safeAreaInsets.top + navigationBarHeight}
}
