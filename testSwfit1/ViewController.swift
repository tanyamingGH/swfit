//
//  ViewController.swift
//  testSwift
//
//  Created by XR on 15/10/21.
//  Copyright © 2015年 XR. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "text";
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    @IBAction func actionTableOrCoreData(sender: AnyObject) {
       self.navigationController?.pushViewController(TestTableViewController(), animated: true)
    }
    
    @IBAction func actionMessagepassing(sender:AnyObject) {
        self.navigationController?.pushViewController(OneViewController(), animated:true)
    }
    
    @IBAction func actionWebDataView(sender:AnyObject){
        self.navigationController?.pushViewController(WebDataViewController(), animated: true)
    }
    
    @IBAction func actionKvcandkvoView(sender:AnyObject){
        self.navigationController?.pushViewController(KVOViewController(), animated: true)
    }
    
    @IBAction func actionMasonryView(sender:AnyObject){
        self.navigationController?.pushViewController(MasonryViewController(), animated: true)
    }
    
    @IBAction func actionDollarView(sender:AnyObject){
        self.navigationController?.pushViewController(DollarToolViewController(), animated: true)
    }
}

