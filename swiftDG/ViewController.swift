//
//  ViewController.swift
//  swiftDG
//
//  Created by mao zuo on 2017/9/18.
//  Copyright © 2017年 maozuo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let btn = UIButton()
        btn.frame=CGRect.init(x: 100, y: 100, width: 100, height: 100)
        btn.backgroundColor=UIColor.red
        btn.setTitle("sbt", for: UIControlState.normal)
        self.view.addSubview(btn)
        
        btn.addTarget(self, action:#selector(btnTap), for: .touchUpInside)
    }
    
    func btnTap(){
        let TestVC = TestController()
        self.show(TestVC, sender: nil)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

