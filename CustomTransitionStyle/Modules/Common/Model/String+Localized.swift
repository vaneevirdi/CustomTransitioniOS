//
//  String+Localized.swift
//  CustomTransitionStyle
//
//  Created by Vanee Virdi on 30/05/18.
//  Copyright © 2018 Vanee Virdi. All rights reserved.
//

import Foundation

extension String {
    var localized: String? {
        return localizedString()
    }
    
    fileprivate func localizedString() -> String? {
        let localizedStringFromMainBundle = Bundle.main.localizedString(forKey: self, value: nil, table: nil)
        return localizedStringFromMainBundle
    }
}
