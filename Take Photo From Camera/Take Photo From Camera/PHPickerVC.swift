//
//  PHPickerViewController.swift
//  Take Photo From Camera
//
//  Created by Mahmoud Batli on 21/05/2025.
//

import UIKit
import PhotosUI
class PHPickerVC: UIViewController, UITableViewDelegate, UITableViewDataSource, PHPickerViewControllerDelegate{

    
    @IBOutlet weak var tableView: UITableView!
    var arryPhotos = [UIImage]()
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    @IBAction func btnGetPhoto(_ sender: Any) {
        arryPhotos.removeAll()
        addPhoto()
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arryPhotos.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "photoCell") as! PHPickerTableViewCell
        cell.imgView.image = arryPhotos[indexPath.row]
        return cell
    }
    func addPhoto (){
        var config = PHPickerConfiguration()
        config.filter = .images
        config.selectionLimit = 2
        
        let picker = PHPickerViewController(configuration: config)
        picker.delegate = self
        present(picker, animated: true)
    }
    func picker(_ picker: PHPickerViewController, didFinishPicking results: [PHPickerResult]) {
        dismiss(animated: true)
        for result in results {
            result.itemProvider.loadObject(ofClass: UIImage.self, completionHandler: {(image , error) in
                if let image = image as? UIImage {
                    DispatchQueue.main.async {
                        self.arryPhotos.append(image)
                        self.tableView.reloadData()
                    }
                }else {
                    
                }
            })
        }
    }
}
