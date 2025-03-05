//
//  PassViewController.swift
//  Passing Data
//
//  Created by Mahmoud batli on 28/02/2025.
//

import UIKit

class PassViewController: UIViewController {

    @IBOutlet weak var viewText: UILabel!
    @IBOutlet weak var viewText2: UILabel!
    var data : User?
    var data2 : String?
    override func viewDidLoad() {
        super.viewDidLoad()
        if let user = data {
            viewText.text = "\(user.name) \(user.age) \(user.email)"
        }
        if let user2 = data2 {
            viewText2.text = user2
        }

    }

}
struct User {
    var name : String
    var age : Int
    var email : String
    
}
