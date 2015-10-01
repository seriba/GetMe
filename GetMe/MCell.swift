//
//  MCell.swift
//  GetMe
//
//  Created by Serigne BA on 01/10/2015.
//  Copyright (c) 2015 4Djolof. All rights reserved.
//

import Foundation
import UIKit

class MCell : UITableViewCell {
    
    @IBOutlet var typeImageView : UIImageView!
    @IBOutlet var profileImageView : UIImageView!
    @IBOutlet var dateImageView : UIImageView!
    
    @IBOutlet var nameLabel : UILabel!
    @IBOutlet var postLabel : UILabel?
    @IBOutlet var dateLabel : UILabel!
    
    override func awakeFromNib() {
        
        dateImageView.image = UIImage(named: "clock")
        profileImageView.layer.cornerRadius = 30
        
        nameLabel.font = UIFont(name: "M-Book", size: 16)
        nameLabel.textColor = UIColor.blackColor()
        
        postLabel?.font = UIFont(name: "M-Book", size: 14)
        postLabel?.textColor = UIColor(white: 0.6, alpha: 1.0)
        
        dateLabel.font = UIFont(name: "M-Book", size: 14)
        dateLabel.textColor = UIColor(white: 0.6, alpha: 1.0)
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        if postLabel != nil {
            let label = postLabel!
            label.preferredMaxLayoutWidth = CGRectGetWidth(label.frame)
        }
    }
    
}
