//
//  UIBarItem+QSString.swift
//  Pods
//
//  Created by Benjamin on 08/12/2016.
//
//

import UIKit

@IBDesignable public extension UIBarItem {
    
    @IBInspectable public var localizeString: String {
        get {
            return self.localizeString
        }
        set {
            #if TARGET_INTERFACE_BUILDER
                let bundle = Bundle(for: type(of: self))
                self.title = bundle.localizedString(forKey: newValue, value: "", table: nil)
            #else
                self.title = newValue.localized()
            #endif
        }
    }
}
