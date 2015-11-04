//
//  MasonryViewController.swift
//  testSwift
//
//  Created by XR on 15/10/28.
//  Copyright © 2015年 XR. All rights reserved.
//

import UIKit
import SnapKit

class MasonryViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor(white: 1, alpha: 1)
        let lab1 = UILabel()
        lab1.text = "this is labe1this is labe1"
        lab1.backgroundColor = UIColor(white: 0.33, alpha: 1)
        self.view.addSubview(lab1)
        
        let lab2 = UILabel()
        lab2.text = "this is labe2this is labe2"
        lab2.backgroundColor = UIColor(white: 0.5, alpha: 1)
        self.view.addSubview(lab2)
        
        lab1.snp_makeConstraints { make in
            make.top.equalTo(self.view).offset(90)
            make.left.equalTo(self.view).offset(30)
            make.height.equalTo(40)
        }
        
        lab2.snp_makeConstraints { make in
            make.left.equalTo(lab1.snp_right).offset(20)
            make.height.equalTo(lab1.snp_height)
            make.bottom.equalTo(lab1).offset(0)
            make.right.equalTo(self.view.snp_right).offset(-10)
            make.width.lessThanOrEqualTo(lab1)
        }
        
        let btn1 = UIButton()
        btn1.backgroundColor = UIColor.redColor()
        self.view.addSubview(btn1)
        btn1.snp_makeConstraints { (make) -> Void in
            make.left.equalTo(20)
            make.right.equalTo(self.view.snp_right).offset(-20)
            make.height.equalTo(40)
            make.bottom.equalTo(self.view.snp_bottom).offset(-20)
        }
        
        
        
        
        
        
    }
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
