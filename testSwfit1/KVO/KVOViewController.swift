//
//  KVOViewController.swift
//  testSwfit1
//
//  Created by XR on 15/10/30.
//  Copyright © 2015年 XR. All rights reserved.
//

import UIKit

class MyClass: NSObject {
    dynamic var date = NSDate()
}

private var mycontext = 0

class KVOViewController: UIViewController {
    
        var myObject: MyClass!
        
        override func viewDidLoad() {
            super.viewDidLoad()
            
            myObject = MyClass()
            print("初始化 MyClass，当前日期: \(myObject.date)")
            myObject.addObserver(self,
                forKeyPath: "date",
                options: .New,
                context: &mycontext)

        }
        
        deinit{
            myObject.removeObserver(self, forKeyPath:"date")
        }

        @IBAction func kvoViewClickBtn_Exchange(sender: AnyObject) {
            self.myObject.date = NSDate()
        }
        
        override func observeValueForKeyPath(keyPath: String?, ofObject object: AnyObject?, change: [String : AnyObject]?, context: UnsafeMutablePointer<Void>) {
            if (context == &mycontext) {
                self.view.backgroundColor = UIColor(red: 1, green: 1, blue: 0, alpha: 1)
            }
        }

}
