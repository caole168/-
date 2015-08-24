//
//  File.swift
//  反调
//
//  Created by Ifeng on 15/8/10.
//  Copyright (c) 2015年 pincher. All rights reserved.
//

import UIKit

class SyTableViewCell: UITableViewCell {
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    
    
    
    @IBOutlet weak var SyCategory: UILabel!
    @IBOutlet weak var SyContent: UILabel!
    
    
    
    
    
}

