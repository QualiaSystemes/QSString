//
//  UIButton+QSString.swift
//  Pods
//
//  Created by Benjamin on 08/12/2016.
//
//

import UIKit

@IBDesignable public extension UIButton {
    
    @IBInspectable public var localizeString: String {
        get {
            return self.localizeString
        }
        set {
            #if TARGET_INTERFACE_BUILDER
                let bundle = Bundle(for: type(of: self))
                self.setTitle(bundle.localizedString(forKey: newValue, value: "", table: nil), for: UIControlState.normal)
            #else
                self.setTitle(newValue.localized(), for: UIControlState.normal)
            #endif
        }
    }
}
