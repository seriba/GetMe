//
//  ViewController.swift
//  GetMe
//
//  Created by Serigne BA on 30/09/2015.
//  Copyright (c) 2015 4Djolof. All rights reserved.
//

import UIKit

class ListMViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet var tableView : UITableView!
    @IBOutlet var menuItem : UIBarButtonItem!
    @IBOutlet var toolbar : UIToolbar!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        tableView.estimatedRowHeight = 100.0;
        tableView.rowHeight = UITableViewAutomaticDimension;
        tableView.separatorStyle = UITableViewCellSeparatorStyle.None
        
        menuItem.image = UIImage(named: "menu")
        toolbar.tintColor = UIColor.blackColor()
    }
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        tableView.reloadData()
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCellWithIdentifier("MCell") as! MCell
        
        cell.typeImageView.image = UIImage(named: "timeline-photo")
        cell.postLabel?.text = "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat."
        cell.dateLabel.text = "2 mins ago"
        if (indexPath.row % 2 == 0) {
            cell.nameLabel.text = "Mickey Mouse"
            cell.profileImageView.image = UIImage(named: "profile-pic-1")
            
        } else {
            cell.nameLabel.text = "Goofy Goof"
            cell.profileImageView.image = UIImage(named: "profile-pic-2")
        }
        return cell
        
    }
    
    @IBAction func presentNavigation(sender: AnyObject?){
        performSegueWithIdentifier("presentNav", sender: self)
    }
    
    
}

