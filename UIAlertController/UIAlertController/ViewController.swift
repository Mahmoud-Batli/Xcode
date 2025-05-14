//
//  ViewController.swift
//  UIAlertController
//
//  Created by Mahmoud Batli on 14/05/2025.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func btnAlert(_ sender: Any) {
        showAlertView()
    }
    
    @IBAction func btnAction(_ sender: Any) {
        showActionSheet()
    }
    func showAlertView(){
        let alert = UIAlertController(title: "Alert", message: "Are You Sure", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Yes", style: .default, handler: { action in
            let txtName = alert.textFields![0]
            print("Your Name Is \(txtName.text!)")
        }))
//        alert.addAction(UIAlertAction(title: "No", style: .cancel))
        alert.addAction(UIAlertAction(title: "Delete", style: .destructive, handler: nil))
        alert.addTextField {(txtName) in
            txtName.placeholder = "Enter Your Name"
        }
        present(alert, animated: true)
    }
    func showActionSheet(){
        let alert = UIAlertController(title: "Action", message: "Are You Sure", preferredStyle: .actionSheet)
        alert.addAction(UIAlertAction(title: "Yes", style:.default))
        alert.addAction(UIAlertAction(title: "Sure", style: .cancel))
        alert.addAction(UIAlertAction(title: "Delete", style: .destructive))
        present(alert, animated: true)
    }
}

