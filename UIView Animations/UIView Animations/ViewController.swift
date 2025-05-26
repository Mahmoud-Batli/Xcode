//
//  ViewController.swift
//  UIView Animations
//
//  Created by Mahmoud Batli on 26/05/2025.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var btnone: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        btnone.alpha = 0
    }
    override func viewDidAppear(_ animated: Bool) {
        animateItems()
    }
    func animateItems(){
        UIView.animate(withDuration: 1){
            self.btnone.alpha = 1
        }
        UIView.animate(withDuration: 1){
            self.btnone.center.y += 50
        } completion: {  _ in
            self.animateButton()
        }
        UIView.animate(withDuration: 0.5, delay: 1, options: [.repeat, .autoreverse], animations: {
            self.imageView.alpha = 0
            self.imageView.frame = CGRect(x: self.imageView.frame.minX - 25, y: self.imageView.frame.minY - 25, width: self.imageView.frame.width + 50, height: self.imageView.frame.height + 50)
        }, completion: nil)
    }
    func animateButton(){
        UIView.animate(withDuration: 0.5){
            self.btnone.layer.transform = CATransform3DMakeScale(1.2, 1.2, 1)
        }completion: { completed in
            if completed {
                UIView.animate(withDuration: 0.5){
                    self.btnone.layer.transform = CATransform3DMakeScale(1, 1, 1)
                }
            }
        }
    }

    @IBAction func btntest(_ sender: Any) {
        animateItems()
    }
    
}

