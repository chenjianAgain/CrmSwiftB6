//
//  ZDLoginViewController.swift
//  CrmSwiftB6
//
//  Created by joseph on 8/27/14.
//  Copyright (c) 2014 Big Nerd Ranch. All rights reserved.
//

import UIKit

class ZDLoginViewController: UIViewController {
    
    var isQuickLogin: Bool!

    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
//    @IBOutlet weak var nameView: UIView! {
//        didSet {
//            self.nameView.layer.borderColor = UIColor(white: 229 / 255.0, alpha: 1).CGColor
//        }
//    }
//    @IBOutlet weak var passwordView: UIView! {
//        didSet {
//            self.passwordView.layer.borderColor = UIColor(white: 229 / 255.0, alpha: 1).CGColor
//        }
//    }
//    
//    @IBOutlet weak var loginButton: UIButton! {
//        didSet {
//            self.loginButton.layer.cornerRadius = 4.0
//        }
//    }

    var zdManagerUser: ZDManagerUser? {
        get {
            return ZDModeClient.sharedModeClient().zdManagerUser
        }
    }
    
    var userId: NSString? {
        get {
            return NSUserDefaults.standardUserDefaults().objectForKey("DefaultCurrentUserId") as NSString?
        }
    }

    override func viewDidAppear(animated: Bool) {
//        self.isQuickLogin = userId != nil
        if userId != nil {
            println(userId!)
            // To do segue
        }
    }
    
    @IBAction func loginButtonPressed(sender: UIButton) {
        
        var hud = MBProgressHUD.showHUDAddedTo(self.view, animated: true)
        hud.labelText = "正在登录，请稍候..."
        ZDModeClient.sharedModeClient().loginWithUserName(self.nameTextField.text, password: self.passwordTextField.text) { (error) -> Void in
            
            if error == nil {
                
                println(self.zdManagerUser)
                println(self.zdManagerUser?.gesturePassword)
                
                if self.zdManagerUser != nil && self.zdManagerUser?.gesturePassword != nil {
                    // 已设置过手势密码
                    println("已设置过手势密码")
                } else {
                    // 第一次登陆，设置手势密码
                    println("第一次登陆，设置手势密码")
                }
                
                self.presentMainTabBarController()
                
            } else {
                hud.labelText = "登录失败，请稍候"
                print("login fail")
            }
            hud.hide(true, afterDelay: 1)
            
            
            
        } // End of closure
    } // End of loginButtonPressed method
    
    func presentMainTabBarController() {
        self.performSegueWithIdentifier("Show Main TabBarController", sender: nil)
    }

}
