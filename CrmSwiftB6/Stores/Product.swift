//
//  Product.swift
//  CrmSwiftB6
//
//  Created by joseph on 9/6/14.
//  Copyright (c) 2014 Big Nerd Ranch. All rights reserved.
//

import UIKit

class Product: NSObject {
    var name: NSString
    var icon: NSString
    
    override init() {
        self.name = ""
        self.icon = ""
    }
}
