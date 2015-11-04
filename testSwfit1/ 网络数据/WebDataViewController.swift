//
//  WebDataViewController.swift
//  testSwift
//
//  Created by XR on 15/10/27.
//  Copyright © 2015年 XR. All rights reserved.
//
///  网络数据 
import UIKit
import Alamofire

class WebDataViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        Alamofire.request(.GET, "http://httpbin.org/get", parameters: ["foo": "bar"])
            .responseJSON { response in
                print(response.request)  // original URL request
                print(response.response) // URL response
                print(response.data)     // server data
                print(response.result)   // result of response
                
                if let JSON = response.result.value {
                    print("JSON: \(JSON)")
                }
        }
        
    }


    

}
