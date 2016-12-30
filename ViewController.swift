//
//  ViewController.swift
//  Navigation
//
//  Created by Mac33 on 24/12/16.
//  Copyright © 2016 JadavMehul. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func viewWillAppear(_ animated: Bool) {
        self.navigationController?.setNavigationBarHidden(false, animated: true)
        Comman().E_setBackButton_Title_RightButton(viewcontroller: self, title: "Title", imageName: "ic_right_arrow")
        super.viewWillAppear(animated)
    }
    func E_BTBack(){
        print("Back")
        _ = navigationController?.popViewController(animated: true)
    }
    func E_BTNavRight(){
        print("Right")
        _ = navigationController?.popViewController(animated: true)
    }

}

