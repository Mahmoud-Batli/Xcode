//
//  CollectionInTableViewController.swift
//  UICollectionView
//
//  Created by Mahmoud batli on 17/02/2025.
//

import UIKit

class CollectionInTableViewController: UIViewController, UITableViewDelegate, UITableViewDataSource{

    @IBOutlet weak var tableView: UITableView!
    var arrItems = [item]()
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
        
        arrItems.append(item(title: "Product 1", photo: [UIImage(named: "001")!, UIImage(named: "002")!, UIImage(named: "003")!, UIImage(named: "004")!,]))
        arrItems.append(item(title: "Product 2", photo: [UIImage(named: "002")!, UIImage(named: "004")!, UIImage(named: "003")!, UIImage(named: "001")!,]))
        arrItems.append(item(title: "Product 3", photo: [UIImage(named: "001")!, UIImage(named: "004")!, UIImage(named: "003")!]))
        arrItems.append(item(title: "Product 4", photo: [UIImage(named: "004")!, UIImage(named: "004")!, UIImage(named: "003")!]))

    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrItems.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "tableViewCell") as! CollectionInTableTableViewCell
        let product = arrItems[indexPath.row]
        cell.setupCell(title: product.title, arrphotos: product.photo)
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 200
    }
    
}
struct item {
    let title : String
    let photo : [UIImage]
}
