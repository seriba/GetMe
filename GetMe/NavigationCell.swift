//
//  NavigationCell.swift
//  GetMe
//
//  Created by Serigne BA on 01/10/2015.
//  Copyright (c) 2015 4Djolof. All rights reserved.
//

import Foundation
import UIKit

class NavigationCell: UITableViewCell {
    
    @IBOutlet var iconImageView: UIImageView!
    
    @IBOutlet var titleLabel: UILabel!
    @IBOutlet var countLabel: UILabel!
    @IBOutlet var countContainer: UIView!
    
    override func awakeFromNib() {
        
        titleLabel.font = UIFont(name: "M-Black", size: 16)
        titleLabel.textColor = UIColor.whiteColor()
        
        countLabel.font = UIFont(name: "M-Black", size: 13)
        countLabel.textColor = UIColor.whiteColor()
        
        countContainer.backgroundColor = UIColor(red: 0.33, green: 0.62, blue: 0.94, alpha: 1.0)
        countContainer.layer.cornerRadius = 15
    }
    
    override func setSelected(selected: Bool, animated: Bool) {
        
        let countNotAvailable = countLabel.text == nil
        
        countContainer.hidden = countNotAvailable
        countLabel.hidden = countNotAvailable
        
    }
}
