//
//  ProductStore.swift
//  CrmSwiftB6
//
//  Created by joseph on 9/6/14.
//  Copyright (c) 2014 Big Nerd Ranch. All rights reserved.
//

import UIKit

class ProductStore: NSObject {
    
    
    var products: Array<Dictionary<NSString, NSString>>? {
//        var m_products = Array<Product>()
            var productInPlistPath = NSBundle.mainBundle().pathForResource("product.plist", ofType: nil)
            var productsInPlist = NSArray(contentsOfFile: productInPlistPath!) as Array<Dictionary<NSString, NSString>>
//            for var count = 0; count < productsInPlist.count; count++ {
//                var p = Product()
//                var dic = productsInPlist[count] as NSDictionary
//                p.name = dic.objectForKey("name") as NSString
//                p.icon = dic.objectForKey("icon") as NSString
//                
//                m_products.append(p)
//            }
            
        return productsInPlist
    }
    
    
    
    
    class var sharedStore: ProductStore {
        struct Static {
            static let sharedStore = ProductStore()
        }
        
        return Static.sharedStore
    }
    
}
