//
//  TwoViewController.swift
//  testSwift
//
//  Created by XR on 15/10/26.
//  Copyright © 2015年 XR. All rights reserved.
//

import UIKit

@objc
protocol TwoViewControllerDelegate{
   
   optional func twoViewReturnName(nameStr:String)  //可选实现
}

class TwoViewController: UIViewController {

    @IBOutlet weak var nameFie: UITextField?
    var delegate :TwoViewControllerDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let masView = UIView(frame: CGRectZero)
        masView.backgroundColor = UIColor(red: 0.5, green: 0.2, blue: 0.2, alpha: 0.5)
        self.view.addSubview(masView)
//        masView.mas_makeConstraints { (MASConstraintMaker) -> Void in
//            let make = MASConstraintMaker
//            make.top.equalTo()
//            make.left.equalTo()
//            make.right.equalTo()
//            make.bottom.equalTo()
//        }
    }

    @IBAction func twoViewClickBtnLast(){
        //代理方法
        //self.delegate?.twoViewReturnName((nameFie?.text)!)
    
    
        
        self.navigationController?.popViewControllerAnimated(true)
        NSNotificationCenter.defaultCenter().postNotificationName(centerName, object: nameFie?.text)
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
