//
//  String+QSString.swift
//  Pods
//
//  Created by Benjamin on 07/12/2016.
//
//

import UIKit

public extension String {

    func localized() -> String {
        return NSLocalizedString(self, comment: "");
    }
}
