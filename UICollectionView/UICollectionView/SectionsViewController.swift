//
//  SectionsViewController.swift
//  UICollectionView
//
//  Created by Mahmoud batli on 17/02/2025.
//

import UIKit

class SectionsViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {

    @IBOutlet weak var collectionView: UICollectionView!
    var arrPhotos = [photos]()
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.delegate = self
        collectionView.dataSource = self
        
        arrPhotos.append(photos(name: "2020", photo: [UIImage(named: "001")!, UIImage(named: "002")!, UIImage(named: "003")!, UIImage(named: "004")!]))
        arrPhotos.append(photos(name: "2021", photo: [UIImage(named: "001")!, UIImage(named: "002")!, UIImage(named: "003")!, UIImage(named: "004")!]))
        arrPhotos.append(photos(name: "2022", photo: [UIImage(named: "001")!, UIImage(named: "002")!, UIImage(named: "003")!, UIImage(named: "004")!]))
        arrPhotos.append(photos(name: "2023", photo: [UIImage(named: "001")!, UIImage(named: "002")!, UIImage(named: "003")!, UIImage(named: "004")!]))
        
        arrPhotos.reverse()
        
    }
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return arrPhotos.count
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return arrPhotos[section].photo.count
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! SectionsCollectionViewCell
        cell.imageView.image = arrPhotos[indexPath.section].photo[indexPath.row]
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: collectionView.frame.width * 0.32, height: collectionView.frame.width * 0.32)
    }
    func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        if kind == UICollectionView.elementKindSectionHeader{
            let header = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: "label", for: indexPath) as! SectionsCollectionReusableView
            header.label.text = arrPhotos[indexPath.section].name
            header.backgroundColor = UIColor.gray
            return header
        }else{
            let footer = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: "footer", for: indexPath)
            footer.backgroundColor = UIColor.black
            return footer
        }
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForHeaderInSection section: Int) -> CGSize {
        return CGSize(width: collectionView.frame.width, height: 30)
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForFooterInSection section: Int) -> CGSize {
        return CGSize(width: collectionView.frame.width, height: 5)
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 1
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 5
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 1, left: 2, bottom: 1, right: 2)
    }

}
struct photos {
    let name : String
    let photo : [UIImage]
    
}
