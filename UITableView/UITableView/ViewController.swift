//
//  ViewController.swift
//  UITableView
//
//  Created by Mahmoud batli on 30/01/2025.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    var arrItems = [items]()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        // Do any additional setup after loading the view.
        arrItems.append(items.init(name: "Phone1", price: 1000, descriptipn: "Iphone1", image: UIImage(named: "image01")!))
        arrItems.append(items.init(name: "Phone2", price: 2000, descriptipn: "Iphone2", image: UIImage(named: "image02")!))
        arrItems.append(items.init(name: "Phone3", price: 3000, descriptipn: "Iphone3", image: UIImage(named: "image01")!))
        arrItems.append(items.init(name: "Phone4", price: 4000, descriptipn: "Iphone4", image: UIImage(named: "image02")!))
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrItems.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as! TableViewCell
        let data = arrItems[indexPath.row]
        cell.setupCell(name: data.name, price: data.price, description: data.descriptipn, image: data.image)
        cell.butFavorit.tag = indexPath.row
        cell.butFavorit.addTarget(self, action: #selector(addFav(sender:)), for: .touchUpInside)
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("cell index \(indexPath.row)")
    }
    @objc
    func addFav(sender:UIButton){
        sender.setImage(UIImage(systemName: "heart.fill"), for: .normal)
        print("favorit index \(sender.tag)")
    }
}
struct items {
    let name : String
    let price : Double
    let descriptipn : String
    let image : UIImage
}

