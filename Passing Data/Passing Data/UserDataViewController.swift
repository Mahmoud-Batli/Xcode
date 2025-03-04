//
//  UserDataViewController.swift
//  Passing Data
//
//  Created by Mahmoud batli on 01/03/2025.
//

import UIKit
protocol UserDataDelegate {
    func didSelectUserData(name: String , age: Int, color: UIColor)
    func didSelectUserData2(name2 : String , age2: String)
}
class UserDataViewController: UIViewController {

    @IBOutlet weak var txtNameUser: UITextField!
    @IBOutlet weak var txtAgeUser: UITextField!
     
    var userDelegate : UserDataDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func btnSendData(_ sender: Any) {
        userDelegate?.didSelectUserData(name: "Mahmoud", age: 33, color: UIColor.white)
        userDelegate?.didSelectUserData2(name2: txtNameUser.text!, age2: txtAgeUser.text!)
        dismiss(animated: true)
    }

}
