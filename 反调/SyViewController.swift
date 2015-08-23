//
//  ViewController.swift
//  反调
//
//  Created by Ifeng on 15/8/7.
//  Copyright (c) 2015年 pincher. All rights reserved.
//  首页列表ViewController

import UIKit

class SyViewController: UIViewController,UITableViewDelegate,UITableViewDataSource{
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        return 10
        
    }
    
   
    
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell{
         var tableCell : SyTableViewCell = tableView.dequeueReusableCellWithIdentifier("SyCell") as!SyTableViewCell
        
        return tableCell
    }

    
    func tableView(tableView: UITableView!, didSeletRowAtIndexPath indexPath: NSIndexPath!)
    {
        // self.performSegueWithIdentifier("goDetailContentSugue", sender: indexPath)
        //cell选中跳转
        
//        var idRow = indexPath.row + 1
//        var idGroup = data["\(idRow)"] as NSDictionary
//        contentID = idGroup["ContentID"] as NSString
//        
//        println("点击时")
//        println(contentID)
        
        
    }
    
    
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
//     segur 传值
//        if segue.identifier == "goDetailContentSegue"{
//            var goDetailContent = segue.destinationViewController as DetailContentViewController
//            
//            goDetailContent.receive = contentID  as NSString
//            
//            println("传值时的值")
//            println(goDetailContent.receive)
//            println(contentID)
//        }
        
        
    }
    
}

