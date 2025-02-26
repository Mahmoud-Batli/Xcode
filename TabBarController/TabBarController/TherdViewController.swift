//
//  TherdViewController.swift
//  TabBarController
//
//  Created by Mahmoud batli on 26/02/2025.
//

import UIKit

class TherdViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        tabBarController?.tabBar.isHidden = false
    }
}
