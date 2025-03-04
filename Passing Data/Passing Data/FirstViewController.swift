//
//  FirstViewController.swift
//  Passing Data
//
//  Created by Mahmoud batli on 01/03/2025.
//

import UIKit

class FirstViewController: UIViewController {

    @IBOutlet weak var lblData: UILabel!
    var data = ""
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let vcData = segue.destination as? SecondViewController {
            vcData.data = "Data from first VC"
        }
    }
    @IBAction func unwindTo1 (sender : UIStoryboardSegue) {
        lblData.text = "Back To 1"
    }

}
