//
//  MyButton.swift
//  CrmSwiftB6
//
//  Created by apple on 14-9-15.
//  Copyright (c) 2014年 Big Nerd Ranch. All rights reserved.
//

import UIKit

@IBDesignable class MyButton: UIButton {
    
    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    @IBInspectable var str: String = "Hello"
    @IBInspectable var borderWidth: CGFloat = 0 {
        didSet {
            self.layer.borderWidth = borderWidth
        }
    }
    @IBInspectable var borderColor1: UIColor = UIColor.clearColor() {
        didSet {
            self.layer.borderColor = borderColor1.CGColor!
        }
    }
    @IBInspectable var cornerRadius: CGFloat = 0 {
        didSet {
            self.layer.cornerRadius = cornerRadius
        }
    }
}
