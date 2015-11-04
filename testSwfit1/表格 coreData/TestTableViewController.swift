//
//  TestTableViewController.swift
//  testSwift
//
//  Created by XR on 15/10/21.
//  Copyright © 2015年 XR. All rights reserved.
//

import UIKit

class TestTableViewController: UITableViewController,AddDataViewDelegate {
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView!.registerNib(UINib(nibName:"TestTableViewCell", bundle: nil),forCellReuseIdentifier: "cell")
        self.title = "表格和数据持久化";
        
        let rightBtn = UIBarButtonItem(barButtonSystemItem: .Add, target: self, action:"addData")
        self.navigationItem.rightBarButtonItem = rightBtn
        
    }
    
    func addData(){
        let addDataView = AddDataViewController()
        addDataView.delegate = self
        self.navigationController?.pushViewController(addDataView, animated: true)
    }
    
    func addDataSoursRefresh(){
        self.tableView.reloadData()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return DataManagerTool.shareInstance.array.count
    }

    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("cell", forIndexPath: indexPath) as! TestTableViewCell
        let data = DataManagerTool.shareInstance.array[indexPath.row as Int]
        
        cell.nameLab.text = data.nameValue as String
        cell.ageLab.text = data.ageValue as String
        cell.sexLab.text = data.sexValue as String
        return cell
    }
    
    override func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat{
        return 79
    }
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        return true
    }
    
    // Override to support editing the table view.
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            DataManagerTool.shareInstance.array.removeAtIndex(indexPath.row)
            DataManagerTool.shareInstance.save()
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        }
    }
    
    // Override to support rearranging the table view.
    override func tableView(tableView: UITableView, moveRowAtIndexPath fromIndexPath: NSIndexPath, toIndexPath: NSIndexPath) {
        
    }
    

    
    // Override to support conditional rearranging of the table view.
    override func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
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
