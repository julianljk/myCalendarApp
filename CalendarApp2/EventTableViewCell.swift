//
//  EventTableViewCell.swift
//  CalendarApp2
//
//  Created by Julian Leong on 10/25/15.
//
//

import UIKit

class EventTableViewCell: UITableViewCell {

    
    @IBOutlet weak var eventName: UILabel!
    @IBOutlet weak var eventDate: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
