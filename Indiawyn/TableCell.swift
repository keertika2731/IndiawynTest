//
//  TableCell.swift
//  Indiawyn
//
//  Created by Keertika on 20/06/18.
//  Copyright © 2018 keertika. All rights reserved.
//

import UIKit

class TableCell: UITableViewCell {
    @IBOutlet var userId: UILabel!
    @IBOutlet var id: UILabel!
    @IBOutlet var title: UILabel!
    
    @IBOutlet var body: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
