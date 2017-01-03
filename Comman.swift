//
//  Comman.swift
//  Navigation
//
//  Created by Mac33 on 24/12/16.
//  Copyright © 2016 JadavMehul. All rights reserved.
//

import Foundation
import UIKit

class Comman{
   
    func E_setBackButton_Title_RightButton(viewcontroller:UIViewController, title:String, imageName:String){
        let btnmenu = UIButton(type: .custom)
        btnmenu.frame = CGRect(x: CGFloat(0), y: CGFloat(0), width: CGFloat(30), height: CGFloat(40))
        btnmenu.setImage(UIImage(named: imageName)!, for: .normal)
        btnmenu.addTarget(viewcontroller, action: #selector(self.E_BTNavRight), for: .touchUpInside)
        let back = UIBarButtonItem(customView: btnmenu)
        //btnmenu = nil
        let negativeSpacer = UIBarButtonItem(barButtonSystemItem: .fixedSpace, target: nil, action: nil)
        negativeSpacer.width = -5
        viewcontroller.navigationItem.rightBarButtonItems = [negativeSpacer, back]
        //negativeSpacer = nil
        //back = nil
        E_setBackButtonWithTitle(viewcontroller: viewcontroller, title: title)
    }
    
    func E_setBackButton_Title_RightButton1(viewcontroller:UIViewController, title:String, imageName:String){
        
        let btnmenu = UIButton(type: .custom)
        btnmenu.frame = CGRect(x: CGFloat(0), y: CGFloat(0), width: CGFloat(70), height: CGFloat(20))
        // (0,0,60,20) X,Y,Width,Hight
        btnmenu.titleEdgeInsets = UIEdgeInsetsMake(7, 0, 5, 10)
        // Top,Left,Bottom,Right
        btnmenu.setTitle(imageName, for: .normal)
       // btnmenu.titleLabel!.font = Font_RightButton
        //action: #selector(self.imageTapped(gestureRecognizer:))
        btnmenu.addTarget(viewcontroller, action: #selector(Comman().E_BTNavRight), for: .touchUpInside)
        let back = UIBarButtonItem(customView: btnmenu)
        //btnmenu = nil
        let negativeSpacer = UIBarButtonItem(barButtonSystemItem: .fixedSpace, target: nil, action: nil)
        negativeSpacer.width = -15
        viewcontroller.navigationItem.rightBarButtonItems = [negativeSpacer, back]
        //back = nil
        E_setBackButtonWithTitle(viewcontroller: viewcontroller, title: title)
        
    }
    
    func E_setBackButtonWithTitle(viewcontroller:UIViewController, title:String){
        let btnmenu = UIButton(type: .custom)
        btnmenu.frame = CGRect(x: CGFloat(0), y: CGFloat(0), width: CGFloat(10), height: CGFloat(15))
        btnmenu.setImage(UIImage(named: "ic_Back")!, for: .normal)
        btnmenu.setImage(UIImage(named: "ic_Back")!, for: .highlighted)
        btnmenu.addTarget(viewcontroller, action: #selector(Comman().E_BTBack), for: .touchUpInside)
        let back = UIBarButtonItem(customView: btnmenu)
        //btnmenu = nil
        let negativeSpacer = UIBarButtonItem(barButtonSystemItem: .fixedSpace, target: nil, action: nil)
        negativeSpacer.width = -5
        viewcontroller.navigationItem.leftBarButtonItems = [negativeSpacer, back]
        //negativeSpacer = nil
        //back = nil
        
        if (title.characters.count > 0) {
            let lblTitle = UILabel()
            lblTitle.text = title.uppercased()
            //[lblTitle E_boldSubstring:title];
            //lblTitle.font = Header_Title_Font
            lblTitle.backgroundColor = UIColor.clear
            lblTitle.textColor = UIColor.white
            lblTitle.sizeToFit()
            //viewcontroller.navigationItem.titleView! = lblTitle
            viewcontroller.navigationItem.titleView = lblTitle as UIView
            //lblTitle = nil
        }
    }
    
    /*
     -(void)E_BTBack{}
     -(void)E_BTNavRight{}
     */
    @objc func E_BTBack(){ }
    @objc func E_BTNavRight(){ }
}
