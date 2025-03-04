//
//  ThirdViewController.swift
//  Passing Data
//
//  Created by Mahmoud batli on 01/03/2025.
//

import UIKit

class ThirdViewController: UIViewController {
    
    @IBOutlet weak var lblData: UILabel!
    var data = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        lblData.text = data
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let vcData = segue.destination as? SecondViewController {
            vcData.data = " Back To 2"
            }
        if let vcData2 = segue.destination as? FirstViewController {
                vcData2.data = " Back To 1"
            }
    }
}
