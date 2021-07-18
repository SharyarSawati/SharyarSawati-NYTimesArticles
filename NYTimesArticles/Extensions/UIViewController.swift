//
//  UIViewController.swift
//  NYTimesArticles
//
//  Ceated by qurtass group on 17/07/2021.
//  Copyright © 2021 Sharyar Sawati. All rights reserved.
//

import UIKit
import SVProgressHUD

extension UIViewController {
    
    func showLoading(){
        SVProgressHUD.setDefaultMaskType(.clear)
        SVProgressHUD.show()
    }
    
    func hideLoading(){
        SVProgressHUD.dismiss()
    }
    
    func showAlert(title: String?, message: String?) {
    
        let alertController = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default, handler: nil)
        alertController.addAction(okAction)
        self.present(alertController, animated: true, completion: nil)
        
    }
    
    
}
