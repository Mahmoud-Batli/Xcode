//
//  ViewController.swift
//  Local Notifications
//
//  Created by Mahmoud Batli on 26/05/2025.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var datePicker: UIDatePicker!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func btnSend(_ sender: Any) { //num 1
        UNUserNotificationCenter.current().requestAuthorization(options: [.alert , .sound , .badge]) { granted, error in
            if granted {
                print("Granted")
                DispatchQueue.main.async {
                    self.schadulaNotification()
                }
            }else{
                print("Denied")
            }
        }
    }
    func schadulaNotification(){// look at AppDelegate.swift
        let content = UNMutableNotificationContent()
        content.title = "My Title"
        content.subtitle = "My Subtitle"
        content.body = "My Notification Test"
        content.sound = .default
        content.badge = 1
        content.userInfo = ["name": "My Name"]
        
        //Case 1
        //time in sec if be in minute * 60
//        let trigger = UNTimeIntervalNotificationTrigger(timeInterval: (5), repeats: false)
        
        //Case 2
//        var component = DateComponents()
//        component.calendar = Calendar.current
//        component.weekday = 1
//        component.hour = 19
//        component.minute = 30
//        let trigger = UNCalendarNotificationTrigger(dateMatching: component, repeats: false)
        
        //Case 3
        let date = datePicker.date
        let trigger = UNCalendarNotificationTrigger(dateMatching: Calendar.current.dateComponents([.year, .month, .day, .hour, .minute, .second], from: date), repeats: false)
        
        let requset = UNNotificationRequest(identifier: "testID", content: content, trigger: trigger)
        UNUserNotificationCenter.current().add(requset)
    }
    @IBAction func btnRemove(_ sender: Any) {
        UNUserNotificationCenter.current().removeAllPendingNotificationRequests() // Remove all notifications
        UNUserNotificationCenter.current().removePendingNotificationRequests(withIdentifiers: ["testID"]) // Remove notification with ID
    }
}

