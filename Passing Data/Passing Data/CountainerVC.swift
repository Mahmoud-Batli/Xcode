//
//  CountainerVC.swift
//  Passing Data
//
//  Created by Mahmoud batli on 02/03/2025.
//

import UIKit

class CountainerVC: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let vc = viewControllers![3] as! FourthTabVC
        NotificationCenter.default.addObserver(vc, selector: #selector(vc.changeBackground), name: Notification.Name(postNotification), object: nil)
    }


}
