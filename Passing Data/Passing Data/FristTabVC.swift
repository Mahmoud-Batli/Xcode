//
//  FristTabVC.swift
//  Passing Data
//
//  Created by Mahmoud batli on 02/03/2025.
//

import UIKit
let postNotification = "com.mahmoudbatli.changeBackground"

class FristTabVC: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func btnPostNotification(_ sender: Any) {
        let color = UIColor.blue
        let text = "Data from Post Notfication"
        NotificationCenter.default.post(name: Notification.Name(postNotification), object: color)
        NotificationCenter.default.post(name: Notification.Name(postNotification), object: text)
    }
}
