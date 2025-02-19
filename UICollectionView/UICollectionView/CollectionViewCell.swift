//
//  CollectionViewCell.swift
//  UICollectionView
//
//  Created by Mahmoud batli on 16/02/2025.
//

import UIKit

class CollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var imageItem: UIImageView!
    @IBOutlet weak var lblItem: UILabel!
    
    func setupCell(photo:UIImage, price:Double) {
        imageItem.image = photo
        lblItem.text = "\(price) EG"
    }
}
