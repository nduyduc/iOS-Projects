//
//  TaskTableViewCell.swift
//  ToDoListApp
//
//  Created by Duy Nguyen on 17/3/19.
//  Copyright © 2019 Duc Nguyen. All rights reserved.
//

import UIKit

class ToDoTaskTableViewCell: UITableViewCell {

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var dueDateLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
