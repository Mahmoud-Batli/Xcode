//
//  ViewController.swift
//  Passing Data
//
//  Created by Mahmoud batli on 28/02/2025.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var sendBut: UIButton!
    @IBOutlet weak var textLbl: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func btnSend(_ sender: Any) {
        let vcPass = storyboard?.instantiateViewController(withIdentifier: "passID") as! PassViewController
        vcPass.data = User(name: "Mahmoud", age: 30, email: "m@m.m")
//        navigationController?.pushViewController(vcPass, animated: true)
        
        let vcPass2 = storyboard?.instantiateViewController(withIdentifier: "passID") as! PassViewController
        vcPass2.data2 = textLbl.text
        navigationController?.pushViewController(vcPass2, animated: true)

        
//        vcPass.modalPresentationStyle = .fullScreen
//        present(vcPass, animated: true)
 
        
    }
}

