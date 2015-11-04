//
//  DataModel.swift
//  testSwift
//
//  Created by XR on 15/10/22.
//  Copyright © 2015年 XR. All rights reserved.
//

import UIKit

class DataModel: NSObject,NSCoding {
    var nameValue:String!
    var ageValue: String!
    var sexValue: String!
    
    func encodeWithCoder(aCoder: NSCoder) {
        aCoder.encodeObject(self.nameValue,forKey:"name")
        aCoder.encodeObject(self.ageValue,forKey:"age")
        aCoder.encodeObject(self.sexValue,forKey:"sex")
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init()
        self.nameValue = aDecoder.decodeObjectForKey("name") as! NSString as String
        self.ageValue = aDecoder.decodeObjectForKey("age") as! NSString as String
        self.sexValue = aDecoder.decodeObjectForKey("sex") as! NSString as String
    }
    
    override init() {
        
    }
    
}
