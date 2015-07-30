//
//  CustomTableViewCell.swift
//  CustomScrollContainer
//
//  Created by Yan Saraev on 7/30/15.
//  Copyright (c) 2015 nt. All rights reserved.
//

import UIKit

class CustomTableViewCell: UITableViewCell {

	@IBOutlet weak var label: UILabel?
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
