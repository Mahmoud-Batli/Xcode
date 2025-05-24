//
//  ViewController.swift
//  Multiple Laanguges
//
//  Created by Mahmoud Batli on 21/05/2025.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var btnChange: UIButton!
    @IBOutlet weak var lbltxt: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        view.semanticContentAttribute = .forceLeftToRight // Force LTR or RTL
        lbltxt.text = NSLocalizedString("hello", comment: "")
        btnChange.setTitle(NSLocalizedString("CL", comment: ""), for: .normal)
    }

    @IBAction func btnCHange(_ sender: Any) {
        let currentLanguage = Locale.current.language.languageCode?.identifier
        let newLanguage = currentLanguage == "en" ? "ar" : "en"
        UserDefaults.standard.setValue([newLanguage], forKey: "AppleLanguages")
        exit(0)
    }
    
}
//cd index then ls then "genstrings -o en.lproj *.swift" to export all keys to en or ar Localizable file


