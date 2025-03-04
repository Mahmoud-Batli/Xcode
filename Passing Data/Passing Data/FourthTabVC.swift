//
//  FourthTabVC.swift
//  Passing Data
//
//  Created by Mahmoud batli on 02/03/2025.
//

import UIKit

class FourthTabVC: UIViewController {
    
    @IBOutlet weak var lblThird: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    @objc func changeBackground(_ notification: Notification){
               
        if let color = notification.object as? UIColor {
            view.backgroundColor = color
            lblThird.text = "Data from container using Post Notification"
        }
    }
}
