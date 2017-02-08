//
//  UITextField+QSString.swift
//  Pods
//
//  Created by Benjamin on 08/12/2016.
//
//

import UIKit

@IBDesignable public extension UITextField {
    
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
    
    @IBInspectable public var placeholderLocalizeString: String {
        get {
            return self.placeholderLocalizeString
        }
        set {
            #if TARGET_INTERFACE_BUILDER
                let bundle = Bundle(for: type(of: self))
                self.placeholder = bundle.localizedString(forKey: newValue, value: "", table: nil)
            #else
                self.placeholder = newValue.localized()
            #endif
        }
    }
}
