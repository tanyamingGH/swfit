//
//  AddDataViewController.swift
//  testSwift
//
//  Created by XR on 15/10/22.
//  Copyright © 2015年 XR. All rights reserved.
//

import UIKit

protocol AddDataViewDelegate{
    func addDataSoursRefresh()
}

class AddDataViewController: UIViewController {
    @IBOutlet weak var nameFie: UITextField!
    @IBOutlet weak var sexFie: UITextField!
    @IBOutlet weak var ageFie: UITextField!
    
    var delegate: AddDataViewDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "增加数据"
        
    }
   
    @IBAction func addDataViewClickBtn_Save(sender: AnyObject) {
        let  data = DataModel()
        data.nameValue = nameFie.text!
        data.ageValue = ageFie.text!
        data.sexValue = sexFie.text!
        DataManagerTool.shareInstance.array.append(data)
        DataManagerTool.shareInstance.save()
        self.navigationController?.popViewControllerAnimated(true)
        self.delegate?.addDataSoursRefresh()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
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
