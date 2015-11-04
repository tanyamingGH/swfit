//
//  TestTableViewCell.swift
//  testSwift
//
//  Created by XR on 15/10/22.
//  Copyright © 2015年 XR. All rights reserved.
//

import UIKit

class TestTableViewCell: UITableViewCell {

    @IBOutlet weak var nameLab: UILabel!
    @IBOutlet weak var ageLab: UILabel!
    @IBOutlet weak var sexLab: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        
    }

}
