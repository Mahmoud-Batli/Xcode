//
//  oneViewController.swift
//  NavigationController
//
//  Created by Mahmoud batli on 19/02/2025.
//

import UIKit

class oneViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        navigationController?.navigationBar.prefersLargeTitles = true
        navigationController?.navigationBar.setBackgroundImage(nil, for: .default)
        navigationController?.navigationBar.shadowImage = nil
        
        let backBtn = UIBarButtonItem()
        backBtn.title = "back to home"
        backBtn.target = self
        backBtn.action = #selector(back)
        
        navigationItem.leftBarButtonItem = backBtn
        
        //navigationController?.setNavigationBarHidden(true, animated: true)
        
    }
    @objc func back(){
        navigationController?.popViewController(animated: true)
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
