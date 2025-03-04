//
//  SecondTabVC.swift
//  Passing Data
//
//  Created by Mahmoud batli on 02/03/2025.
//

import UIKit

class SecondTabVC: UIViewController {

    @IBOutlet weak var lblFrist: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        NotificationCenter.default.addObserver(self, selector: #selector(changeBackground), name: Notification.Name(postNotification), object: nil)
    }
    @objc func changeBackground(){
        lblFrist.text = "Data from Self VC"
        view.backgroundColor = UIColor.red
    }
    deinit {
        NotificationCenter.default.removeObserver(self)
    }
}
