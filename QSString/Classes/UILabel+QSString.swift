//
//  UILabel+QSString.swift
//  Pods
//
//  Created by Benjamin on 07/12/2016.
//
//

import UIKit

@IBDesignable public extension UILabel {
    
    @IBInspectable public var localizeString: String {
        get {
            return self.localizeString
        }
        set {
            #if TARGET_INTERFACE_BUILDER
                let bundle = Bundle(for: type(of: self))
                self.text = bundle.localizedString(forKey: newValue, value: "", table: nil)
            #else
                self.text = newValue.localized()
            #endif
        }
    }
}
