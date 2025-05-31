//
//  ViewController.swift
//  Extentions
//
//  Created by Mahmoud Batli on 31/05/2025.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var btnName: UIButton!
    @IBOutlet weak var txtName: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        btnName.setTitle("enter".localized(), for: .normal)
        btnName.setTitleColor(UIColor.mainColor, for: .normal)
    }

    @IBAction func btnSubmit(_ sender: Any) {
        let user : String = txtName.text!
        print("Hello \(user.trim())")
    }
}
extension String {
    func localized() -> String {
        return NSLocalizedString(self, comment: "")
    }
    func trim() -> String {
        return self.replacingOccurrences(of: " ", with: "_")
    }
}
extension UIColor {
    // must put static cus we cant put color in the class
   static var mainColor : UIColor {
        return UIColor(displayP3Red: 0, green: 0, blue: 0, alpha: 1)
    }
    // Or
   static func primarColor() -> UIColor {
        return UIColor(displayP3Red: 0, green: 0, blue: 0, alpha: 1)
    }
}

