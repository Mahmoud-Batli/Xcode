//
//  BlueViewController.swift
//  TabBarController
//
//  Created by Mahmoud batli on 26/02/2025.
//

import UIKit

class BlueViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    override func viewWillAppear(_ animated: Bool) {
        tabBarController?.tabBar.isHidden = false
    }
}
