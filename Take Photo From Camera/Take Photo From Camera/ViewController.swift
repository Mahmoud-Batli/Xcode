//
//  ViewController.swift
//  Take Photo From Camera
//
//  Created by Mahmoud Batli on 17/05/2025.
//

import UIKit

class ViewController: UIViewController,UIImagePickerControllerDelegate, UINavigationControllerDelegate {

    @IBOutlet weak var imageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func btnTakePhoto(_ sender: Any) {
        showPhotoAlert()
    }
    func showPhotoAlert(){
        let alert = UIAlertController(title: "Take Photo From", message: nil, preferredStyle: .actionSheet)
        alert.addAction(UIAlertAction(title: "Camera", style: .default, handler: { action in
            self.getPhoto(type: .camera)
        }))
        alert.addAction(UIAlertAction(title:" Photo Library", style: .default, handler: { action in
            self.getPhoto(type: .photoLibrary)
        }))
        alert.addAction(UIAlertAction(title: "Cancel", style: .cancel))
        present(alert, animated: true, completion: nil)
    }
    func getPhoto(type : UIImagePickerController.SourceType){
        let picker = UIImagePickerController()
        picker.sourceType = type
        picker.allowsEditing = true //False for OriginalImage
        picker.delegate = self
        present(picker, animated: true)
    }
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
//        if let image = info[.editedImage] as? UIImage{
//            imageView.image = image
//        }else {
//            print("Image not found")
//        }
        dismiss(animated: true) // For dismiss ImagePickerController
        // Or using guard
        guard let image = info[.editedImage] as? UIImage else{ //Or .OriginalImage
            print("Image not found")
            return
        }
        imageView.image = image
    }
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        dismiss(animated: true) // For dismiss ImagePickerController
    }
}

