//
//  ViewController.swift
//  UICollectionView
//
//  Created by Mahmoud batli on 16/02/2025.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {

    @IBOutlet weak var collectionView: UICollectionView!
    var arrItems = [items]()
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.delegate = self
        collectionView.dataSource = self
        
        arrItems.append(items(photo: UIImage(named: "001")!, price: 1000))
        arrItems.append(items(photo: UIImage(named: "002")!, price: 1000))
        arrItems.append(items(photo: UIImage(named: "003")!, price: 1000))
        arrItems.append(items(photo: UIImage(named: "004")!, price: 1000))
        arrItems.append(items(photo: UIImage(named: "001")!, price: 1000))
        arrItems.append(items(photo: UIImage(named: "002")!, price: 1000))
        arrItems.append(items(photo: UIImage(named: "003")!, price: 1000))
        arrItems.append(items(photo: UIImage(named: "004")!, price: 1000))
        arrItems.append(items(photo: UIImage(named: "001")!, price: 1000))
        arrItems.append(items(photo: UIImage(named: "002")!, price: 1000))
        
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return arrItems.count
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CollectionViewCell
        let item = arrItems[indexPath.row]
        cell.setupCell(photo: item.photo, price: item.price)
        cell.backgroundColor = UIColor.gray
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: self.view.frame.width * 0.3, height: self.view.frame.width * 0.3)
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 1
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 2
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 1, left: 2, bottom: 1, right: 2)
    }
    
}
struct items {
    let photo : UIImage
    let price : Double
}

