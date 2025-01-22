import UIKit

class ViewController: UIViewController, UITextFieldDelegate // اضافة الكلاس {

    @IBOutlet weak var userText: UITextField! // حقل ١
    @IBOutlet weak var passText: UITextField! // حقل ٢
    
    @IBAction func enterBtn(_ sender: Any) {
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        userText.delegate = self
        passText.delegate = self
        
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
        //اظهار واخفاء الكيبورد
    }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField == userText {
            passText.becomeFirstResponder()
        }else{
            view.endEditing(true)
        }
        return true
        //انتقال المؤشر الى حقل اخر عن طريق الضغط على Enter
    }
}
