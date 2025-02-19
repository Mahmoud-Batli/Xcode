//
//  SliderViewController.swift
//  UICollectionView
//
//  Created by Mahmoud batli on 16/02/2025.
//

import UIKit

class SliderViewController: UIViewController, UICollectionViewDelegateFlowLayout, UICollectionViewDelegate, UICollectionViewDataSource {
    
    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet weak var pageController: UIPageControl!
    var arrphotos = [UIImage(named: "001")!,UIImage(named: "002")!,UIImage(named: "003")!,UIImage(named: "004")!]
    var timer : Timer?
    var currentCellIndex = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.delegate = self
        collectionView.dataSource = self
        
        pageController.numberOfPages = arrphotos.count
        starttimer()
        
    }
    func starttimer(){
        timer = Timer.scheduledTimer(timeInterval: 2, target: self, selector: #selector(moveToNext), userInfo: nil, repeats: true)
    }
    @objc func moveToNext(){
        if currentCellIndex < arrphotos.count - 1{
            currentCellIndex += 1
        }else{
            currentCellIndex = 0
        }
        collectionView.scrollToItem(at: IndexPath(item: currentCellIndex, section: 0), at: .centeredHorizontally, animated: true)
        pageController.currentPage = currentCellIndex
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return arrphotos.count
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! SliderCollectionViewCell
        cell.imageItem2.image = arrphotos[indexPath.row]
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: collectionView.frame.width, height: collectionView.frame.height)
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }

}
