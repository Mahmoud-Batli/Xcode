//
//  UserProfileViewController.swift
//  Passing Data
//
//  Created by Mahmoud batli on 01/03/2025.
//

import UIKit

class UserProfileViewController: UIViewController, UserDataDelegate {
    func didSelectUserData2(name2: String, age2: String) {
        txtName.text = name2
        txtAge.text = age2
    }
    
    func didSelectUserData(name: String, age: Int, color: UIColor) {
        lblUserData.text = "Name is \(name) and age is \(age)"
        lblUserData.textColor = color
    }
    
    @IBOutlet weak var txtName: UITextView!
    
    @IBOutlet weak var txtAge: UITextView!
    @IBOutlet weak var lblUserData: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    

    @IBAction func btnGetData(_ sender: Any) {
        let vcUserData = self.storyboard?.instantiateViewController(withIdentifier: "userDataID") as! UserDataViewController
        vcUserData.userDelegate = self
        present(vcUserData, animated: true)
    }


}
