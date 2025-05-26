//
//  TableVC.swift
//  UIView Animations
//
//  Created by Mahmoud Batli on 26/05/2025.
//

import UIKit

class TableVC: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    var arryNames = ["Mahmoud", "Ahmed", "Ali", "Mazen", "Marawan",
                     "Mahmoud", "Ahmed", "Ali", "Mazen", "Marawan",
                     "Mahmoud", "Ahmed", "Ali", "Mazen", "Marawan",
                     "Mahmoud", "Ahmed", "Ali", "Mazen", "Marawan",
                     "Mahmoud", "Ahmed", "Ali", "Mazen", "Marawan",
                     "Mahmoud", "Ahmed", "Ali", "Mazen", "Marawan",
                     "Mahmoud", "Ahmed", "Ali", "Mazen", "Marawan",
                     "Mahmoud", "Ahmed", "Ali", "Mazen", "Marawan"]
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arryNames.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell")!
        cell.textLabel?.text = arryNames[indexPath.row]
        return cell
    }
    func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        cell.layer.transform = CATransform3DMakeScale(0.1, 0.1, 1)
        UIView.animate(withDuration: 0.5, animations: {
            cell.layer.transform = CATransform3DMakeScale(1, 1, 1)
        })
    }
}
