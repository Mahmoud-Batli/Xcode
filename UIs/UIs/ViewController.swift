//
//  ViewController.swift
//  UIs
//
//  Created by Mahmoud batli on 06/03/2025.
//

import UIKit

class ViewController: UIViewController {

    var canReceiveNotification = false
    
    @IBOutlet weak var lblSlider: UILabel!
    @IBOutlet weak var segCon: UISegmentedControl!
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func segAction(_ sender: Any) {
        print("Index = \(segCon.selectedSegmentIndex)")
        print("Value = \(segCon.titleForSegment(at: segCon.selectedSegmentIndex) ?? "")")
    }
    
    @IBAction func switchDidChanged(_ sender: UISwitch) {
        print("Status = \(sender.isOn)")
        canReceiveNotification = sender.isOn
        
    }
    
    @IBAction func sliderDidChanged(_ sender: UISlider) {
        print("Value = \(sender.value)")
        lblSlider.font = UIFont(name: lblSlider.font.fontName, size: CGFloat(sender.value))
        
    }
}

