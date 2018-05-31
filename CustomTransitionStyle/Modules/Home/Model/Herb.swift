//
//  Herb.swift
//  CustomTransitionStyle
//
//  Created by Vanee Virdi on 31/05/18.
//  Copyright © 2018 Vanee Virdi. All rights reserved.
//

import Foundation

enum Herb: String {
    case basil
    case mint
    case rosemary
    case coriander
    case lemongrass
}

extension Herb {
    static var collection: [Herb] {
        return [.basil, .mint, .rosemary, .coriander, .lemongrass]
    }
    
    var iconName: String {
        return self.rawValue + ".jpg"
    }
}
