//
//  TestController.swift
//  swiftDG
//
//  Created by mao zuo on 2017/10/13.
//  Copyright © 2017年 maozuo. All rights reserved.
//

import UIKit

class TestController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let scrollView = UIScrollView()
        scrollView.frame = self.view.bounds
        scrollView.bounces = true
        scrollView.bouncesZoom = true
        scrollView.isScrollEnabled=true
        scrollView.backgroundColor=UIColor.white
        if #available(iOS 11.0, *) {
            scrollView.contentInsetAdjustmentBehavior = .never
        } else {
            // Fallback on earlier versions
        }
        
        self.view.addSubview(scrollView)
        
        let label = UILabel()
        label.text = "自由是个动态的说法，与其说财务自由，不如说内心的欲望管理。和尚粗食淡饭，照样自在。老板身价千万，缺痛苦的望着福布斯排名眼红。欲望是无止境的。自由是个动态的说法，与其说财务自由，不如说内心的欲望管理。和尚粗食淡饭，照样自在。老板身价千万，缺痛苦的望着福布斯排名眼红。欲望是无止境的。自由是个动态的说法，与其说财务自由，不如说内心的欲望管理。和尚粗食淡饭，照样自在。老板身价千万，缺痛苦的望着福布斯排名眼红。欲望是无止境的。自由是个动态的说法，与其说财务自由，不如说内心的欲望管理。和尚粗食淡饭，照样自在。老板身价千万，缺痛苦的望着福布斯排名眼红。欲望是无止境的。自由是个动态的说法，与其说财务自由，不如说内心的欲望管理。和尚粗食淡饭，照样自在。老板身价千万，缺痛苦的望着福布斯排名眼红。欲望是无止境的。自由是个动态的说法，与其说财务自由，不如说内心的欲望管理。和尚粗食淡饭，照样自在。老板身价千万，缺痛苦的望着福布斯排名眼红。欲望是无止境的。自由是个动态的说法，与其说财务自由，不如说内心的欲望管理。和尚粗食淡饭，照样自在。老板身价千万，缺痛苦的望着福布斯排名眼红。欲望是无止境的。自由是个动态的说法，与其说财务自由，不如说内心的欲望管理。和尚粗食淡饭，照样自在。老板身价千万，缺痛苦的望着福布斯排名眼红。欲望是无止境的。自由是个动态的说法，与其说财务自由，不如说内心的欲望管理。和尚粗食淡饭，照样自在。老板身价千万，缺痛苦的望着福布斯排名眼红。欲望是无止境的。自由是个动态的说法，与其说财务自由，不如说内心的欲望管理。和尚粗食淡饭，照样自在。老板身价千万，缺痛苦的望着福布斯排名眼红。欲望是无止境的。自由是个动态的说法，与其说财务自由，不如说内心的欲望管理。和尚粗食淡饭，照样自在。老板身价千万，缺痛苦的望着福布斯排名眼红。欲望是无止境的。自由是个动态的说法，与其说财务自由，不如说内心的欲望管理。和尚粗食淡饭，照样自在。老板身价千万，缺痛苦的望着福布斯排名眼红。欲望是无止境的。自由是个动态的说法，与其说财务自由，不如说内心的欲望管理。和尚粗食淡饭，照样自在。老板身价千万，缺痛苦的望着福布斯排名眼红。欲望是无止境的。自由是个动态的说法，与其说财务自由，不如说内心的欲望管理。和尚粗食淡饭，照样自在。老板身价千万，缺痛苦的望着福布斯排名眼红。欲望是无止境的。自由是个动态的说法，与其说财务自由，不如说内心的欲望管理。和尚粗食淡饭，照样自在。老板身价千万，缺痛苦的望着福布斯排名眼红。欲望是无止境的。自由是个动态的说法，与其说财务自由，不如说内心的欲望管理。和尚粗食淡饭，照样自在。老板身价千万，缺痛苦的望着福布斯排名眼红。欲望是无止境的。自由是个动态的说法，与其说财务自由，不如说内心的欲望管理。和尚粗食淡饭，照样自在。老板身价千万，缺痛苦的望着福布斯排名眼红。欲望是无止境的。"
        label.numberOfLines=0
        label.frame=CGRect(x: 0, y: 0, width: 300, height: 1200)
        
        scrollView.contentSize=label.frame.size
        scrollView.addSubview(label)
        
        
        
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    

}
