//
//  ViewController.swift
//  UIPickerView
//
//  Created by Mahmoud Batli on 09/05/2025.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {

    @IBOutlet weak var lblData: UILabel!
    @IBOutlet weak var pickerView: UIPickerView!
    var arrCities = ["Cairo", "Hurghada", "Qena", "Luxor", "Aswan"]
    override func viewDidLoad() {
        super.viewDidLoad()
        pickerView.delegate = self
        pickerView.dataSource = self
    }

    @IBAction func btnGetData(_ sender: Any) {
        lblData.text = arrCities[pickerView.selectedRow(inComponent: 0)]
        
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
    // change immediately
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        lblData.text = arrCities[row]
    }
    func pickerView(_ pickerView: UIPickerView, attributedTitleForRow row: Int, forComponent component: Int) -> NSAttributedString? {
        NSAttributedString(string: arrCities[row], attributes: [NSAttributedString.Key.foregroundColor: UIColor.red])
    }
    
}

