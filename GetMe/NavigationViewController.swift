//
//  NavigationViewController.swift
//  GetMe
//
//  Created by Serigne BA on 01/10/2015.
//  Copyright (c) 2015 4Djolof. All rights reserved.
//

import Foundation
import Foundation
import UIKit

class NavigationViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet var bgImageView : UIImageView!
    @IBOutlet var tableView   : UITableView!
    @IBOutlet var dimmerView  : UIView!
    
    var items : [NavigationModel]!
    
    //0 or 1
    func RandomInt() -> Bool {
        var res = Int(arc4random_uniform(UInt32((1 - 0) + 1))) + 0
        return res == 0 ? true : false
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        var rand = RandomInt()
        tableView.delegate = self
        tableView.dataSource = self
        tableView.separatorStyle = .None
        tableView.backgroundColor = UIColor.clearColor()
        
        rand ?  (bgImageView.image = UIImage(named: "nav-bg1")) :  (bgImageView.image = UIImage(named: "nav-bg2"))
       
        dimmerView.backgroundColor = UIColor(white: 0.0, alpha: 0.3)
        
        let item1 = NavigationModel(title: "MON COMPTE", icon: "icon-home", count:"3")
        let item2 = NavigationModel(title: "RECHERCHER", icon: "icon-chat")
        let item3 = NavigationModel(title: "LOREM", icon: "icon-star" )
        let item4 = NavigationModel(title: "IPSUM", icon: "icon-filter")
        let item5 = NavigationModel(title: "ABOUT", icon: "icon-info")
        
        items = [item1, item2, item3, item4, item5]
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCellWithIdentifier("NavigationCell") as! NavigationCell
        
        let item = items[indexPath.row]
        
        cell.titleLabel.text = item.title
        cell.countLabel.text = item.count
        cell.iconImageView.image = UIImage(named: item.icon)
        cell.backgroundColor = UIColor.clearColor()
        
        return cell
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        dismissViewControllerAnimated(true, completion: nil)
    }
    
    override func preferredStatusBarStyle() -> UIStatusBarStyle {
        return .LightContent
    }
    
}

class NavigationModel {
    
    var title : String!
    var icon : String!
    var count : String?
    
    init(title: String, icon : String){
        self.title = title
        self.icon = icon
    }
    
    init(title: String, icon : String, count: String){
        
        self.title = title
        self.icon = icon
        self.count = count
    }
}
