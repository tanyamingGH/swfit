//
//  DataManagerTool.swift
//  testSwift
//
//  Created by XR on 15/10/22.
//  Copyright © 2015年 XR. All rights reserved.
//

//   单例模式

import UIKit

let ContactFilePath = NSSearchPathForDirectoriesInDomains(NSSearchPathDirectory.DocumentDirectory, NSSearchPathDomainMask.UserDomainMask, true)[0].stringByAppendingString("contacts.data")

class DataManagerTool: NSObject {
    
    var array = [DataModel]()
    
    //初始化时 取到数据
    private  override  init() {
        if NSKeyedUnarchiver.unarchiveObjectWithFile(ContactFilePath) != nil  {
            array = NSKeyedUnarchiver.unarchiveObjectWithFile(ContactFilePath) as! Array
        }
    }
    
    //保存 数据
    func save(){
        NSKeyedArchiver.archiveRootObject(array, toFile: ContactFilePath)
    }
    
    class var shareInstance: DataManagerTool {
        get {
            struct Static {
                static var instance: DataManagerTool? = nil
                static var token: dispatch_once_t = 0
            }
            dispatch_once(&Static.token, {
                Static.instance = DataManagerTool()
            })
            return Static.instance!
        }
    }
}