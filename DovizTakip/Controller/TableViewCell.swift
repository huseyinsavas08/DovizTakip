//
//  TableViewCell.swift
//  DovizTakip
//
//  Created by Hüseyin Savaş on 30.06.2023.
//

import UIKit

class TableViewCell: UITableViewCell {
    
    @IBOutlet weak var myLabel: UILabel!
    @IBOutlet weak var myPhoto: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
}
