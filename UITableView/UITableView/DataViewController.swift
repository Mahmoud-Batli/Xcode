//
//  DataViewController.swift
//  UITableView
//
//  Created by Mahmoud batli on 30/01/2025.
//

import UIKit

class DataViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var arrUsers = [String]()

    @IBOutlet weak var txtAdd: UITextField!
    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrUsers.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = arrUsers[indexPath.row]
        return cell
    }
    @IBAction func butAdd(_ sender: Any) {
        if let text = txtAdd.text{
            arrUsers.append(text)
            let data = IndexPath(row: arrUsers.count - 1 , section: 0)
            tableView.beginUpdates()
            tableView.insertRows(at: [data], with: .automatic)
            tableView.endUpdates()
            txtAdd.text = ""
        }
    }
    @IBAction func butEdit(_ sender: Any) {
        tableView.isEditing = !tableView.isEditing

    }
    func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        return true
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }
    func tableView(_ tableView: UITableView, moveRowAt sourceIndexPath: IndexPath, to destinationIndexPath: IndexPath) {
        arrUsers.swapAt(sourceIndexPath.row, destinationIndexPath.row)
    }
    func tableView(_ tableView: UITableView, trailingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
        let deleteAction = UIContextualAction(style: .destructive, title: "Delete") { (action, view, completionHandler) in
            self.arrUsers.remove(at: indexPath.row)
            tableView.beginUpdates()
            tableView.deleteRows(at: [indexPath], with: .automatic)
            tableView.endUpdates()
        }
        let favoritAction = UIContextualAction(style: .normal, title: "Favorite") { (_, _, _) in
            print("Add To Favorite")
        }
        deleteAction.image = UIImage(systemName: "trash")
        favoritAction.image = UIImage(systemName: "heart")
        favoritAction.backgroundColor = UIColor.green
        return UISwipeActionsConfiguration(actions: [deleteAction, favoritAction])
    }
    func tableView(_ tableView: UITableView, leadingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
        let archivAction = UIContextualAction(style: .normal, title: "Archive") { (_, _, _) in
            print("Add To Archive")
        }
        return UISwipeActionsConfiguration(actions: [archivAction])
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    
}
