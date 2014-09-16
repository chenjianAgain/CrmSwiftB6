//
//  ProductDetailViewController.swift
//  CrmSwiftB6
//
//  Created by apple on 14-9-15.
//  Copyright (c) 2014年 Big Nerd Ranch. All rights reserved.
//

import UIKit

class ProductDetailViewController: UIViewController {
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        
        self.navigationController?.navigationBarHidden = true
    }
    
    override func viewWillDisappear(animated: Bool) {
        super.viewWillDisappear(animated)
        
        self.navigationController?.navigationBarHidden = false
    }
    
    @IBAction func back() {
        self.navigationController?.popViewControllerAnimated(true)
    }
}
