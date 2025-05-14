//
//  ViewController.swift
//  UIPageViewController
//
//  Created by Mahmoud Batli on 11/05/2025.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var lblTitle: UILabel!
    @IBOutlet weak var lblDescription: UILabel!
    
    var pageTitle : String?, pageDescription : String?
    var pageColor : UIColor?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let title = pageTitle {
            lblTitle.text = title
        }
        if let description = pageDescription {
            lblDescription.text = description
        }
        if let background = pageColor {
            view.backgroundColor = background
        }
    }


}

