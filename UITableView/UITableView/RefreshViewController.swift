//
//  RefreshViewController.swift
//  UITableView
//
//  Created by Mahmoud batli on 01/02/2025.
//

import UIKit

class RefreshViewController: UIViewController,UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    var arrNumbers = [String]()
    let refreshControl = UIRefreshControl()
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
        refreshControl.tintColor = UIColor.green
        refreshControl.addTarget(self, action: #selector(getData), for: .valueChanged)
        tableView.addSubview(refreshControl)

    }
    @objc func getData(){
        arrNumbers.append("Number is \(arrNumbers.count)")
        refreshControl.endRefreshing()
        tableView.reloadData()
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrNumbers.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = arrNumbers[indexPath.row]
        return cell
    }

}
