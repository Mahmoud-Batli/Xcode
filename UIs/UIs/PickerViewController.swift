//
//  PickerViewController.swift
//  UIs
//
//  Created by Mahmoud Batli on 07/05/2025.
//

import UIKit

class PickerViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {

    @IBOutlet weak var lblData: UILabel!
    @IBOutlet weak var pickerCities: UIPickerView!
    var arrCities = ["Cairo", "Hurghada", "Giza", "Qena", "Aswan"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        pickerCities.delegate = self
        pickerCities.dataSource = self
    }
    
    @IBAction func btnGetData(_ sender: Any) {
        lblData.text = arrCities[pickerCities.selectedRow(inComponent: 0)]
    }
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return arrCities.count
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return arrCities[row]
    }
    func pickerView(_ pickerView: UIPickerView, attributedTitleForRow row: Int, forComponent component: Int) -> NSAttributedString? {
        return NSAttributedString(string: arrCities[row], attributes: [NSAttributedString.Key.foregroundColor:UIColor.red])
    }

}
