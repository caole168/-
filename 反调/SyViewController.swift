//
//  ViewController.swift
//  反调
//
//  Created by Ifeng on 15/8/7.
//  Copyright (c) 2015年 pincher. All rights reserved.
//  首页列表ViewController

import UIKit

class SyViewController: UIViewController,UITableViewDelegate,UITableViewDataSource{
    
    
    var plistData:NSString = ""
    var data:NSMutableDictionary = NSMutableDictionary()
    var contentID:NSString=""
    //var plist

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        

        //  -----------读取plist文件----------------
        plistData = NSBundle.mainBundle().pathForResource("SyTest", ofType: "plist")!
        data = NSMutableDictionary(contentsOfFile: plistData as String)!
        
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
      
        return data.count
        
    }
    
   
    
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell{
         var tableCell : SyTableViewCell = tableView.dequeueReusableCellWithIdentifier("SyCell") as!SyTableViewCell
        
        var dataRow = indexPath.row + 1 //数组元素从1开始的，所以+1 ，indexPath默认为0
        
        var dataGroup = data["\(dataRow)"] as! NSDictionary
        
        tableCell.SyCategory.text = dataGroup["Category"] as? String     //cell用户名
        tableCell.SyContent.text = dataGroup["Content"] as? String  //cell 内容
        
//
//        var photoUrl = dataGroup["UserPhoto"] as NSString
//        tableCell.UserPhoto.image = UIImage(named: "\(photoUrl)")              //cell头像
//        
//        var imageA = dataGroup["PublishImageA"] as NSString
//        tableCell.PublishImageA.image = UIImage(named: "\(imageA)")
//        var imageB = dataGroup["PublishImageB"] as NSString
//        tableCell.PublishImageA.image = UIImage(named: "\(imageB)")
//        var imageC = dataGroup["PublishImageC"] as NSString
//        tableCell.PublishImageA.image = UIImage(named: "\(imageC)")
//        

        
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

