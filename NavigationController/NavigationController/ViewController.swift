//
//  ViewController.swift
//  NavigationController
//
//  Created by Mahmoud batli on 19/02/2025.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let btn2 = UIBarButtonItem(title: "Bar Button", style: .plain, target: self, action: #selector(btnTest))
        navigationItem.rightBarButtonItem = btn2
        
//        let btn3 = UIBarButtonItem()
//        btn3.image = UIImage(systemName: "power")
//        btn3.action = #selector(btnTest)
//        btn3.target = self
//        navigationItem.leftBarButtonItem = btn3

    }
    override func viewWillAppear(_ animated: Bool) {
        navigationController?.navigationBar.prefersLargeTitles = false
        navigationController?.navigationBar.tintColor = UIColor.white
        navigationController?.navigationBar.barTintColor = UIColor.black
        navigationController?.navigationBar.titleTextAttributes = [NSAttributedString.Key.foregroundColor : UIColor.red]
        navigationItem.titleView = UIImageView(image: UIImage(systemName: "power"))
    }
    @objc func btnTest() {
        print("Button Test")
    }

    @IBAction func barBtn(_ sender: Any) {
        print("bar button item")
    }
    @IBAction func btn(_ sender: Any) {
        let therdVc = self.storyboard?.instantiateViewController(withIdentifier: "therdVc")
        navigationController?.pushViewController(therdVc!, animated: true)
    }
    

}

