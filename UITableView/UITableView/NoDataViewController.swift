//
//  NoDataViewController.swift
//  UITableView
//
//  Created by Mahmoud batli on 01/02/2025.
//

import UIKit

class NoDataViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    var arrCities = ["Cairo", "Hurghada", "Qena", "Luxor"]
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
        arrCities.removeAll()
        if arrCities.count == 0 {
            tableView.isHidden = true
            let imageError = UIImageView(frame: CGRect(x: 50, y: 200, width: self.view.frame.width - 100, height: 200))
            imageError.image = UIImage(systemName: "icloud.slash")
            imageError.tintColor = UIColor.gray
            self.view.addSubview(imageError)
            
            let imageText = UILabel(frame: CGRect(x: imageError.frame.minX, y: imageError.frame.maxY + 15, width: imageError.frame.width, height: 50))
            imageText.text = "No Data"
            imageText.textAlignment = .center
            imageText.textColor = UIColor.red
            self.view.addSubview(imageText)
        }

    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrCities.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = arrCities[indexPath.row]
        return cell
    }
    
    
}
