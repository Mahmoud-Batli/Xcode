//
//  TableViewCell.swift
//  UITableView
//
//  Created by Mahmoud batli on 30/01/2025.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var lblName: UILabel!
    @IBOutlet weak var lblprice: UILabel!
    @IBOutlet weak var lblDescription: UILabel!
    @IBOutlet weak var imagePhoto: UIImageView!
    @IBOutlet weak var butFavorit: UIButton!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func setupCell(name: String, price: Double, description: String, image: UIImage){
        lblName.text = name
        lblprice.text = "\(price) EG"
        lblDescription.text = description
        imagePhoto.image = image
    }

}
