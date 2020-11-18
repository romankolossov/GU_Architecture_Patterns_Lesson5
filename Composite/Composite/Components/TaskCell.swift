//
//  TaskCell.swift
//  Composite
//
//  Created by Роман Колосов on 18.11.2020.
//

import UIKit

class TaskCell: UITableViewCell {
    
    @IBOutlet weak var taskName: UILabel!
    @IBOutlet weak var taskDescription: UILabel!
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
