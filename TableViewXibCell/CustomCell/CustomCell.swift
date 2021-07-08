//
//  CustomCell.swift
//  TableViewAndCell
//
//  Created by Daniel Washington Ignacio on 07/07/21.
//

import UIKit

class CustomCell: UITableViewCell {

    @IBOutlet weak var perfilImage: UIImageView!
    
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var subtitleLabel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
