//
//  ViewController.swift
//  DarkMode & CustomFonts
//
//  Created by Mahmoud Batli on 14/05/2025.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lblMode: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        switch traitCollection.userInterfaceStyle {
        case .dark:
            lblMode.text = "Dark Mode Is On"
        case .light:
            lblMode.text = "Light Mode Is On"
        default:
            lblMode.text = "Unsupported Mode"
            
        }
        // TO Know Names for custom fonts
        for family in UIFont.familyNames{
            let name = UIFont.fontNames(forFamilyName: family)
            print("Family = \(family) -  Name = \(name)")
        }

    }


}

