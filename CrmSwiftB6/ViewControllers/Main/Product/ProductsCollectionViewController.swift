//
//  ProductsCollectionViewController.swift
//  CrmSwiftB6
//
//  Created by joseph on 9/6/14.
//  Copyright (c) 2014 Big Nerd Ranch. All rights reserved.
//

import UIKit

class ProductsCollectionViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {
    
    var products: Array<Dictionary<NSString, NSString>>? {
        return ProductStore.sharedStore.products
    }
   
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        var productCell = collectionView.dequeueReusableCellWithReuseIdentifier("product cell", forIndexPath: indexPath) as ProductCell
        
        var product = self.products![indexPath.row]
        
        productCell.imageView.image = UIImage(named: product["icon"]!)
        productCell.label.text = product["name"]
        
        return productCell;
    }
    
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return self.products!.count;
    }
}
