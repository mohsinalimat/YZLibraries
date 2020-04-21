//
//  YZAppConfig.swift
//  YZUIAlertController
//
//  Created by Vipul Patel on 21/04/20.
//

import UIKit

//MARK: - UIAlertController
extension UIAlertController {
    
    public static func show(with locationInfo: UIView? = nil, title: String?, message: String?, style: UIAlertController.Style, buttons: [String], controller: UIViewController?, userAction: ((_ action: String) -> ())?) {
        let alertController = UIAlertController(title: title, message: message, preferredStyle: style)
        buttons.forEach { (buttonTitle) in
            alertController.addAction(UIAlertAction(title: buttonTitle, style: .default, handler: { (action: UIAlertAction) in
                DispatchQueue.main.async {userAction?(buttonTitle)}
            }))
        }
        
        if let locationInfo = locationInfo, let popoverController = alertController.popoverPresentationController {
            popoverController.sourceView = locationInfo
            popoverController.sourceRect = locationInfo.frame
        }
        
        if let parentController = controller {
            DispatchQueue.main.async {
                parentController.present(alertController, animated: true, completion: nil)
            }
        }else{
            if let window = _appDelegate.window,
                let vcRoot = window?.rootViewController {
                vcRoot.present(alertController, animated: true, completion: nil)
            }
        }
    }
}
