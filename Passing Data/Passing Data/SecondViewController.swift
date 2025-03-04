//
//  SecondViewController.swift
//  Passing Data
//
//  Created by Mahmoud batli on 01/03/2025.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var lblData: UILabel!
    var data = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        lblData.text = data
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let vcData = segue.destination as? ThirdViewController {
            vcData.data = self.data
        }
    }
    @IBAction func unwindTo2 (sender: UIStoryboardSegue){
        lblData.text = data
    }

}
