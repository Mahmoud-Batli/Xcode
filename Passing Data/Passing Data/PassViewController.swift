//
//  PassViewController.swift
//  Passing Data
//
//  Created by Mahmoud batli on 28/02/2025.
//

import UIKit

class PassViewController: UIViewController {

    @IBOutlet weak var viewText: UILabel!
    var data : User?
    override func viewDidLoad() {
        super.viewDidLoad()
        if let user = data {
            viewText.text = "\(user.name) \(user.age) \(user.email)"
        }

    }

}
struct User {
    var name : String
    var age : Int
    var email : String
    
}
