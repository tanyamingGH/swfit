//
//  OneViewController.swift
//  testSwift
//
//  Created by XR on 15/10/26.
//  Copyright © 2015年 XR. All rights reserved.
//

import UIKit

let centerName = "centerNameNot"

class OneViewController: UIViewController,TwoViewControllerDelegate{

    @IBOutlet weak var nameFie: UITextField?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        NSNotificationCenter.defaultCenter().addObserver(self, selector:
           "centerFunc:" , name: centerName, object: nil)

    }

    @IBAction func oneViewClickBtnNext(){
        let twoView = TwoViewController()
        self.navigationController!.pushViewController(twoView, animated: true)
    }
    
    func centerFunc(title:NSNotification){
        self.nameFie?.text = title.object as? String
    }
    
    func gameOver(title:NSNotification)
    {
    
    }
    
    func twoViewReturnName(nameStr: String) {
        self.nameFie?.text = nameStr
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
