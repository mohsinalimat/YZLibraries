# YZLibraries

[![Version](https://img.shields.io/cocoapods/v/YZLibraries.svg?style=flat)](https://cocoapods.org/pods/YZLibraries)
[![License](https://img.shields.io/cocoapods/l/YZLibraries.svg?style=flat)](https://cocoapods.org/pods/YZLibraries)
[![Platform](https://img.shields.io/cocoapods/p/YZLibraries.svg?style=flat)](https://cocoapods.org/pods/YZLibraries)


## Features

- [x] **YZAppConfig** class used to configure `designWidth, designHeight, navigationBarHeight`. 
- [x] **YZCALayer** is type of **CALayer** extension to add or apply `applyShadow, addCornerRadius, addBorder, addGradient`.
- [x] **YZUIView** is type of **UIView** extension to add or apply `addCornerRadius, applyShadow, addGradient, addConstraint, addBorder`


## Requirements

- iOS 12.0+
- Xcode 11+
- Swift 5.0+


## Usage

### 1. YZAppConfig Class

`YZAppConfig` is used to set your design `width, height, navigationBarHeight` provided by your designer. By configure design settings, it will calculate `widthRatio, heightRatio, safeAreaInsets`

**Initialisation:**
```
YZAppConfig.initialise(375, designHeight: 667, navigationBarHeight: 88)
```
**Properties:**
*  `YZAppConfig.appDelegate` - Provides `UIApplicationDeletage` object using `UIApplication.shared.delegate!`.
*  `YZAppConfig.navigationBarHeight` - Provides setted navigation bar height.
*  `YZAppConfig.designWidth` - Provides setted design width.
*  `YZAppConfig.designHeight` - Provides setted design height.
*  `YZAppConfig.width` - Provides currently running iOS Device/Simulator  width using `UIScreen.main.bounds.size.width`.
*  `YZAppConfig.height` - Provides currently running iOS Device/Simulator  height using `UIScreen.main.bounds.size.height`.
*  `YZAppConfig.widthRatio` - Provides width ratio by calculating  `width/designWidth`.
*  `YZAppConfig.heightRatio` - Provides height ratio by calculating  `height/designHeight`.
*  `YZAppConfig.safeAreaInsets` - Provides `UIEdgeInsets` object using  `appDelegate.window!!.safeAreaInsets`.
*  `YZAppConfig.safeAreaInsets` - Provides `UIEdgeInsets` object using  `appDelegate.window!!.safeAreaInsets`.

### 2. YZCALayer
`YZCALayer` is extension of `CALayer` to `addCornerRadius`, `applyShadow`, `addGradient`, `addConstraintWithSuperView`, `addBorder`, `addDashBorder`. 

**Functions:**
* `public func addCornerRadiusBy(_ roundingCorners: UIRectCorner = [.allCorners], cornerRadii: CGSize = .zero, fillColor: UIColor? = .black)` - It will use to add cornder radius using `CAShapeLayer`, with specific parameters.
* `public func applyShadowWith(_ roundingCorners: UIRectCorner = [.allCorners], cornerRadii: CGSize = .zero, fillColor: UIColor? = nil, shadowOffset: CGSize = .zero, shadowColor: UIColor, shadowRadius: CGFloat = 3, shadowOpacity:Float = 0)` - It will use to draw a shadow using `CAShapeLayer`, with specific parameters.
* `public func addBorderBy(_ roundingCorners: UIRectCorner = [.allCorners], cornerRadii: CGSize = .zero, fillColor: UIColor? = .black, strokeColor: UIColor? = nil, lineWidth: CGFloat = 1)` - It will use to draw a border using `CAShapeLayer`, with specific parameters.
* `public func addDashBorderBy(_ cornerRadius: CGFloat = .leastNonzeroMagnitude, fillColor: UIColor? = .black, dashColor: UIColor? = nil, dashHeight: CGFloat = 1, dashWidth: CGFloat = 5, spaceBetweenDash: CGFloat = 5)` - It will use to draw a dash border using `CAShapeLayer`, with specific parameters.
* `public func addGradient(_ colors: [UIColor], gradientPoint: YZGradientPoint, roundingCorners: UIRectCorner = [.allCorners], cornerRadii: CGSize = .zero)` - It will use to add gradient colors using `CAGradientLayer`, with specific parameters.

### 3. YZUIView
`YZUIView` is extension of `UIView` to `addCornerRadius`, `applyShadow`, `addGradient`, `addConstraintWithSuperView`, `addBorder`, `addDashBorder`. It will internally call `YZCALayer` functions to design `UIView` as per needed.

**Properties:**
*  `isRound` - `@IBInspectable isRound` property is used to draw fully round on selected `UIView`.
*  `borderWidth` - `@IBInspectable borderWidth` property is used to draw border around on selected `UIView`.
*  `borderColor` - `@IBInspectable borderColor` property is used to apply border color on selected `UIView`.
*  `cornerRadius` - `@IBInspectable cornerRadius` property is used to apply corner radius on selected `UIView`.
*  `shadowRadius` - `@IBInspectable shadowRadius` property is used to define shadow radius on selected `UIView`.
*  `shadowOpacity` - `@IBInspectable shadowOpacity` property is used to define shadow opacity on selected `UIView`.
*  `shadowColor` - `@IBInspectable shadowColor` property is used to define shadow color on selected `UIView`.
*  `shadowOffset` - `@IBInspectable shadowOffset` property is used to define shadow offsets on selected `UIView`.
*  `zPosition` - `@IBInspectable zPosition` property is used to define `zPosition`.

**Functions:**
* `public func addCornerRadiusBy(_ roundingCorners: UIRectCorner = [.allCorners], cornerRadii: CGSize = .zero, fillColor: UIColor? = .black)` - It will use to add cornder radius around `UIView`, with specific parameters.
* `public func applyShadowWith(_ roundingCorners: UIRectCorner = [.allCorners], cornerRadii: CGSize = .zero, fillColor: UIColor? = nil, shadowOffset: CGSize = .zero, shadowColor: UIColor, shadowRadius: CGFloat = 3, shadowOpacity:Float = 0)` - It will use to draw a shadow around `UIView`, with specific parameters.
* `public func addConstraintWithSuperView(_ topConstraint: CGFloat, leadingConstraint: CGFloat, bottomConstraint: CGFloat, trailingConstraint: CGFloat)` - It will use to add constraint with superView.
* `public func addDashBorderBy(_ cornerRadius: CGFloat = .leastNonzeroMagnitude, fillColor: UIColor? = .black, dashColor: UIColor? = nil, dashHeight: CGFloat = 1, dashWidth: CGFloat = 5, spaceBetweenDash: CGFloat = 5)` - It will use to draw a dash border using `CAShapeLayer`, with specific parameters.
* `public func addBorderBy(_ roundingCorners: UIRectCorner = [.allCorners], cornerRadii: CGSize = .zero, fillColor: UIColor? = .black, strokeColor: UIColor? = nil, lineWidth: CGFloat = 1)` - It will use to draw a border around `UIView`, with specific parameters.
* `public func addDashBorderBy(_ cornerRadius: CGFloat = .leastNonzeroMagnitude, fillColor: UIColor? = .black, dashColor: UIColor? = nil, dashHeight: CGFloat = 1, dashWidth: CGFloat = 5, spaceBetweenDash: CGFloat = 5)` - It will use to draw a dash border around `UIView`, with specific parameters.
* `public func addGradient(_ colors: [UIColor], gradientPoint: YZGradientPoint, roundingCorners: UIRectCorner = [.allCorners], cornerRadii: CGSize = .zero)` - It will use to add gradient colors inside `UIView`, with specific parameters.


### 4. YZArray
`YZArray` is extension of `Array` collection data type to perform operation like `uniqueElements` or  `removeElements`. 

**Properties:**
*  `uniqueElements` - It will provide unique elements array.

**Functions:**
* `public mutating func uniqueElementsInPlace()` - It will use to make unique elements array type without generating another copy of array type.
* `public mutating func remove(_ elements: [Element])` - It will use to remove one or more than one provided elements from existing array.


### 5. YZURL
`YZURL` is extension of `URL` and provides following properties and functions. 

**Properties:**
*  `isFileExists` - It will check file existance for given URL.
*  `convertToData` - It will generate data object from given file URL.

**Functions:**
* `public func deleteFile()` - It will check file existance and delete from given URL.
* `public func getThumbnailFromVideo()` - It will use to get thumbnail image from given video file URL.
* `public func compressVideo(_ outputURL: URL, handler:@escaping (_ exportSession: AVAssetExportSession?, _ compressVideoURL: URL?)-> Void)` - It will use to compress video for given URL.
* `public func getValueForQuery(_ parameter: String)` - It will use to get value from given query parameter.


### 6. YZDictionary
`YZDictionary` is extension of `Dictionary` and `NSDictionary` which provides following properties and functions. 

**Properties:**
*  `toJSON` - It will used to convert `Dictionary` to JSON String.
*  `convertToData` - It will generate data object from given file URL.

**Functions:**
* `public mutating func merge(_ other: Dictionary)` - It will merge existing dictionary with provided dictionary.
* `public func getDoubleValue(forKey: String)` - It will provide `Double` type value from given `NSDictionary`.
* `public func getFloatValue(forKey: String)` - It will provide `Float` type value from given `NSDictionary`.
* `public func getUIntValue(forKey: String)` - It will provide `UInt` type value from given `NSDictionary`.
* `public func getIntValue(forKey: String)` - It will provide `Int` type value from given `NSDictionary`.
* `public func getInt64Value(forKey: String)` - It will provide `Int64` type value from given `NSDictionary`.
* `public func getInt32Value(forKey: String)` - It will provide `Int32` type value from given `NSDictionary`.
* `public func getInt16Value(forKey: String)` - It will provide `Int16` type value from given `NSDictionary`.
* `public func getInt8Value(forKey: String)` - It will provide `Int8` type value from given `NSDictionary`.
* `public func getStringValue(forKey: String)` - It will provide `String` type value from given `NSDictionary`.
* `public func getBooleanValue(forKey: String)` - It will provide `Bool` type value from given `NSDictionary`.


## Installation

YZLibraries is available through [CocoaPods](https://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'YZLibraries', ~> '0.1.4'
```


## Author

Vipul Patel (Yudiz Solutions Pvt. Ltd.), vipul.p@yudiz.in


## License

YZLibraries is available under the MIT license. See the LICENSE file for more info.
