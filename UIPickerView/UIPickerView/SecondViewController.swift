//
//  SecondViewController.swift
//  UIPickerView
//
//  Created by Mahmoud Batli on 10/05/2025.
//

import UIKit

class SecondViewController: UIViewController,UIPickerViewDelegate, UIPickerViewDataSource, UITextViewDelegate{

    @IBOutlet weak var txtData: UITextField!
    var arrCities = ["Cairo", "Hurghada", "Qena", "Luxor", "Aswan"]
    let pickerCity = UIPickerView()
    var currentIndex = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        pickerCity.delegate = self
        pickerCity.dataSource = self
        
        // Add Done Button to toolbar
        let toolBar = UIToolbar()
        toolBar.sizeToFit()
        let btnDone = UIBarButtonItem(title: "Done", style: .plain, target: self, action: #selector(doneKey))
        toolBar.setItems([btnDone], animated: true)
        
        txtData.inputView = pickerCity
        txtData.inputAccessoryView = toolBar
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
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
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        currentIndex = row
        txtData.text = arrCities[row]
    }
    @objc func doneKey() {
        txtData.text = arrCities[currentIndex] // To easyly select frist index
        view.endEditing(true)
    }
}
