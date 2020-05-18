//
//  YZConstrainedViews.swift
//  YZLibraries
//
//  Created by Vipul Patel on 18/05/20.
//

import UIKit

//MARK: - Class YZParentControl
/// It is a sub-class of `UIControl` use to set as parent class.
public class YZParentControl: UIControl {
    @IBOutlet weak var viewContainer: UIView?
    @IBOutlet var constraintHeightOfSeparator: NSLayoutConstraint?
    @IBOutlet var horizontalConstraints: [NSLayoutConstraint]?
    @IBOutlet var verticalConstraints: [NSLayoutConstraint]?
    public static var identifier: String {return String(describing: self)}
    public static var nib: UINib {return UINib(nibName: identifier, bundle: nil)}

    public override func awakeFromNib() {
        super.awakeFromNib()
        constraintUpdate()
    }
    
    public override func layoutSubviews() {
        super.layoutSubviews()
    }
    
    public func constraintUpdate() {
        if let hConts = horizontalConstraints {
            for const in hConts {
                let v1 = const.constant
                let v2 = v1 * YZAppConfig.widthRatio
                const.constant = v2
            }
        }
        if let vConst = verticalConstraints {
            for const in vConst {
                let v1 = const.constant
                let v2 = v1 * YZAppConfig.heightRatio
                const.constant = v2
            }
        }
    }
}


//MARK: - Class YZParentCVC
/// It is a sub-class of `UICollectionViewCell` use to set as parent class.
public class YZParentCVC: UICollectionViewCell {
    @IBOutlet weak var viewContainer: UIView?
    @IBOutlet var constraintHeightOfSeparator: NSLayoutConstraint?
    @IBOutlet var horizontalConstraints: [NSLayoutConstraint]?
    @IBOutlet var verticalConstraints: [NSLayoutConstraint]?
    public static var identifier: String {return String(describing: self)}
    public static var nib: UINib {return UINib(nibName: identifier, bundle: nil)}

    public override func awakeFromNib() {
        super.awakeFromNib()
        constraintUpdate()
    }
    
    public override func layoutSubviews() {super.layoutSubviews()}

    public func constraintUpdate() {
        if let hConts = horizontalConstraints {
            for const in hConts {
                let v1 = const.constant
                let v2 = v1 * YZAppConfig.widthRatio
                const.constant = v2
            }
        }
        if let vConst = verticalConstraints {
            for const in vConst {
                let v1 = const.constant
                let v2 = v1 * YZAppConfig.heightRatio
                const.constant = v2
            }
        }
    }
}

//MARK: - Class YZParentCRV
/// It is a sub-class of `UICollectionReusableView` use to set as parent class.
public class YZParentCRV: UICollectionReusableView {
    @IBOutlet weak var viewContainer: UIView?
    @IBOutlet var constraintHeightOfSeparator: NSLayoutConstraint?
    @IBOutlet var horizontalConstraints: [NSLayoutConstraint]?
    @IBOutlet var verticalConstraints: [NSLayoutConstraint]?
    public static var identifier: String {return String(describing: self)}
    public static var nib: UINib {return UINib(nibName: identifier, bundle: nil)}

    public override func awakeFromNib() {
        super.awakeFromNib()
        constraintUpdate()
    }
    
    public override func layoutSubviews() {super.layoutSubviews()}

    public func constraintUpdate() {
        if let hConts = horizontalConstraints {
            for const in hConts {
                let v1 = const.constant
                let v2 = v1 * YZAppConfig.widthRatio
                const.constant = v2
            }
        }
        if let vConst = verticalConstraints {
            for const in vConst {
                let v1 = const.constant
                let v2 = v1 * YZAppConfig.heightRatio
                const.constant = v2
            }
        }
    }
}

//MARK: - Class YZParentHFV
/// It is a sub-class of `UITableViewHeaderFooterView` use to set as parent class.
public class YZParentHFV: UITableViewHeaderFooterView {
    @IBOutlet weak var viewContainer: UIView?
    @IBOutlet var constraintHeightOfSeparator: NSLayoutConstraint?
    @IBOutlet var horizontalConstraints: [NSLayoutConstraint]?
    @IBOutlet var verticalConstraints: [NSLayoutConstraint]?
    public static var identifier: String {return String(describing: self)}
    public static var nib: UINib {return UINib(nibName: identifier, bundle: nil)}

    public override func awakeFromNib() {
        super.awakeFromNib()
        constraintUpdate()
    }
    
    public override func layoutSubviews() {super.layoutSubviews()}

    func constraintUpdate() {
        
        if let heightOfSperator = constraintHeightOfSeparator {
            heightOfSperator.constant = 0.5
        }
        
        if let hConts = horizontalConstraints {
            for const in hConts {
                let v1 = const.constant
                let v2 = v1 * YZAppConfig.widthRatio
                const.constant = v2
            }
        }
        if let vConst = verticalConstraints {
            for const in vConst {
                let v1 = const.constant
                let v2 = v1 * YZAppConfig.heightRatio
                const.constant = v2
            }
        }
    }
}

//MARK: - Class YZParentTVC
/// It is a sub-class of `UITableViewCell` use to set as parent class.
public class YZParentTVC: UITableViewCell {
    @IBOutlet weak var viewContainer: UIView?
    @IBOutlet var constraintHeightOfSeparator: NSLayoutConstraint?
    @IBOutlet var horizontalConstraints: [NSLayoutConstraint]?
    @IBOutlet var verticalConstraints: [NSLayoutConstraint]?
    public static var identifier: String {return String(describing: self)}
    public static var nib: UINib {return UINib(nibName: identifier, bundle: nil)}

    public override func awakeFromNib() {
        super.awakeFromNib()
        constraintUpdate()
    }
    
    public override func layoutSubviews() {super.layoutSubviews()}

    public func constraintUpdate() {
        
        if let heightOfSperator = constraintHeightOfSeparator {
            heightOfSperator.constant = 0.67
        }
        
        if let hConts = horizontalConstraints {
            for const in hConts {
                let v1 = const.constant
                let v2 = v1 * YZAppConfig.widthRatio
                const.constant = v2
            }
        }
        if let vConst = verticalConstraints {
            for const in vConst {
                let v1 = const.constant
                let v2 = v1 * YZAppConfig.heightRatio
                const.constant = v2
            }
        }
    }
}

//MARK: - Class YZParentView
/// It is a sub-class of `UIView` use to set as parent class.
public class YZParentView: UIView {
    @IBOutlet weak var viewContainer: UIView?
    @IBOutlet var constraintHeightOfSeparator: NSLayoutConstraint?
    @IBOutlet var horizontalConstraints: [NSLayoutConstraint]?
    @IBOutlet var verticalConstraints: [NSLayoutConstraint]?
    public static var identifier: String {return String(describing: self)}
    public static var nib: UINib {return UINib(nibName: identifier, bundle: nil)}

    public override func awakeFromNib() {
        super.awakeFromNib()
        constraintUpdate()
    }
    
    public override func layoutSubviews() {super.layoutSubviews()}

    public func constraintUpdate() {
        if let hConts = horizontalConstraints {
            for const in hConts {
                let v1 = const.constant
                let v2 = v1 * YZAppConfig.widthRatio
                const.constant = v2
            }
        }
        if let vConst = verticalConstraints {
            for const in vConst {
                let v1 = const.constant
                let v2 = v1 * YZAppConfig.heightRatio
                const.constant = v2
            }
        }
    }
}
