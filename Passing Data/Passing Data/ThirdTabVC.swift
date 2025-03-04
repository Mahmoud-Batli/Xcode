//
//  ThirdTabVC.swift
//  Passing Data
//
//  Created by Mahmoud batli on 02/03/2025.
//

import UIKit

class ThirdTabVC: UIViewController {

    @IBOutlet weak var lblSecond: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        NotificationCenter.default.addObserver(self, selector: #selector(changeBackground), name: Notification.Name(postNotification), object: nil)
    }
    @objc func changeBackground(_ notification: Notification){
        if let color = notification.object as? UIColor {
            view.backgroundColor = color
        }
        if let text = notification.object as? String {
            lblSecond.text = text
        }
    }
}
