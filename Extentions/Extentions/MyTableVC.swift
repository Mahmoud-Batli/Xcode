//
//  MyTableVC.swift
//  Extentions
//
//  Created by Mahmoud Batli on 31/05/2025.
//

import UIKit

class MyTableVC: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    var arryNames = ["Mahmoud", "Ahmed", "Mazen"]
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
    }
}
extension MyTableVC : UITableViewDelegate,  UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arryNames.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell")!
        cell.textLabel?.text = arryNames[indexPath.row]
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("My Name Is = \(arryNames[indexPath.row])")
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80
    }
}
