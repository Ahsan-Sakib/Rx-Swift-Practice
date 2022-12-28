//
//  itemTableViewCell.swift
//  Base Application
//
//  Created by BJIT-SAKIB on 28/12/22.
//  Copyright © 2022 sakibwrold. All rights reserved.
//

import UIKit

class itemTableViewCell: UITableViewCell {

    @IBOutlet weak var namelabel: UILabel!

    @IBOutlet weak var itemImage: UIImageView!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
      //  namelabel.text = "sdfhsdhf"
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    func configureCell(item:ItemModel){
        self.namelabel.text = item.name
        self.itemImage.image = UIImage(imageLiteralResourceName: item.image)
    }
}
